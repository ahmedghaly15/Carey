import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/shared_pref_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';

class LocationService {
  static const int _locationCacheDurationDays = 30;

  static Future<String> getAndCacheCountryCode() async {
    final cachedLocation = await _retrieveCachedCountryCode();

    if (cachedLocation != null && !_isCacheExpired(cachedLocation.timestamp)) {
      final cachedCountryCode = cachedLocation.countryCode;
      debugPrint('Using cached country code: $cachedCountryCode');
      return cachedCountryCode!;
    }

    return await _refreshCachedLocation();
  }

  static Future<String?> _getCountryCode() async {
    // Check and request permission
    try {
      final LocationPermission permission = await Geolocator.checkPermission();
      if (_isLocationPermissionDenied(permission)) {
        await Geolocator.requestPermission();
        if (_isLocationPermissionDenied(permission)) {
          debugPrint('Location permissions denied');
          return null;
        }
      }

      // Get position only if we have permission and services are enabled
      final Position position = await Geolocator.getCurrentPosition();
      debugPrint('***** LocationService: Getting Country Code *****');
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      debugPrint(
          '***** Country Code: ${placemarks.first.isoCountryCode} *****');
      return placemarks.first.isoCountryCode;
    } catch (e) {
      debugPrint('Error getting location: $e');
      return null;
    }
  }

  static bool _isLocationPermissionDenied(LocationPermission permission) {
    return permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever;
  }

  static Future<CachedLocation?> _retrieveCachedCountryCode() async {
    final cachedCountryCode =
        await SharedPrefHelper.getString(CacheKeys.countryCode);
    final timestampStr =
        await SharedPrefHelper.getString(CacheKeys.countryCodeTimestamp);

    if (!timestampStr.isNullOrEmpty) {
      return CachedLocation(
        countryCode: cachedCountryCode,
        timestamp: DateTime.parse(timestampStr),
      );
    }
    return null;
  }

  static bool _isCacheExpired(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp).inDays;
    return difference >= _locationCacheDurationDays;
  }

  static Future<String> _refreshCachedLocation() async {
    final currentCountryCode = await _getCountryCode();

    if (currentCountryCode.isNullOrEmpty) {
      return AppConstants.defaultCountryCode;
    } else {
      await _cacheCountryCode(currentCountryCode!);
      return currentCountryCode;
    }
  }

  static Future<void> _cacheCountryCode(String countryCode) async {
    debugPrint('********* CACHING COUNTRY CODE: $countryCode *************');
    await Future.wait([
      SharedPrefHelper.setData(CacheKeys.countryCode, countryCode),
      SharedPrefHelper.setData(
        CacheKeys.countryCodeTimestamp,
        DateTime.now().toIso8601String(),
      ),
    ]);
  }
}

class CachedLocation {
  final String? countryCode;
  final DateTime timestamp;

  CachedLocation({
    this.countryCode,
    required this.timestamp,
  });
}

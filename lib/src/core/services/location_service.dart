import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/shared_pref_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

String? countryCode;

class LocationService {
  static const int _locationCacheDurationDays = 30; // Cache duration in days

  static Future<void> getAndCacheCountryCode() async {
    final cachedLocation = await _retrieveCachedCountryCode();

    // Check if we have a valid cached location that's not expired
    if (cachedLocation != null && !_isCacheExpired(cachedLocation.timestamp)) {
      countryCode = cachedLocation.countryCode;
      debugPrint('Using cached country code: $countryCode');
      return;
    }

    // If cache is expired or doesn't exist, get new location
    await _refreshCountryCode(cachedLocation);
  }

  static Future<String> _getCountryCode() async {
    try {
      return await _currentCountryCode();
    } catch (error) {
      return _handleGetCountryCodeErrors(error);
    }
  }

  static Future<String> _currentCountryCode() async {
    Position position = await Geolocator.getCurrentPosition();
    debugPrint('***** LocationService: Getting Country Code *****');
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    debugPrint('***** Country Code: ${placemarks.first.isoCountryCode} *****');
    return placemarks.first.isoCountryCode ?? AppConstants.defaultCountryCode;
  }

  static Future<String> _handleGetCountryCodeErrors(Object error) async {
    final cachedCountryCode = await _retrieveCachedCountryCode();
    if (error is PlatformException && error.code == 'IO_ERROR') {
      debugPrint(
          '*** Geocoding service unavailable. Defaulting to $cachedCountryCode. ***');
    } else {
      debugPrint('******* Error retrieving country code: $error *******');
    }
    return cachedCountryCode?.countryCode ?? AppConstants.defaultCountryCode;
  }

  static Future<CachedLocation?> _retrieveCachedCountryCode() async {
    final code = await SharedPrefHelper.getString(CacheKeys.countryCode);
    final timestamp =
        await SharedPrefHelper.getString(CacheKeys.countryCodeTimestamp);
    return CachedLocation(
      countryCode: code,
      timestamp: DateTime.parse(timestamp),
    );
  }

  static bool _isCacheExpired(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp).inDays;
    return difference >= _locationCacheDurationDays;
  }

  static Future<void> _refreshCountryCode(
    CachedLocation? cachedLocation,
  ) async {
    try {
      final currentCountryCode = await LocationService._getCountryCode();
      await _cacheCountryCode(currentCountryCode);
      countryCode = currentCountryCode;
    } catch (e) {
      // If getting new location fails but we have cached data, use it
      if (cachedLocation != null) {
        countryCode = cachedLocation.countryCode;
        debugPrint('Failed to get new location, using cached: $countryCode');
      } else {
        countryCode = AppConstants.defaultCountryCode;
        debugPrint('Using default country code: $countryCode');
      }
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

// To cache both the country code and its timestamp
class CachedLocation {
  final String? countryCode;
  final DateTime timestamp;

  CachedLocation({
    this.countryCode,
    required this.timestamp,
  });
}

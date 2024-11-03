import 'dart:convert';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class AuthLocalDataSource {
  AuthLocalDataSource._();

  static Future<void> secureUserData(AuthResponseEntity userData) async {
    await SecureStorageHelper.setSecuredString(
      CacheKeys.cachedUserData,
      json.encode(userData.toJson()),
    );
  }

  static Future<void> setAndSecureUserDataAndSetTokenIntoHeaders(
    AuthResponseEntity userData,
  ) async {
    currentUserData = userData;
    await secureUserData(userData);
    DioFactory.setTokenIntoHeaders(userData.token);
  }

  static Future<AuthResponseEntity> getSecuredUserData() async {
    final cachedUserData = await SecureStorageHelper.getSecuredString(
      CacheKeys.cachedUserData,
    );
    final userData = AuthResponseEntity.fromJson(json.decode(cachedUserData));
    return userData;
  }
}

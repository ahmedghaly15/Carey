import 'dart:convert';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';

class LoginLocalDataSource {
  LoginLocalDataSource._();

  static Future<void> _secureUserData(LoginData userData) async {
    await SecureStorageHelper.setSecuredString(
      CacheKeys.cachedUserData,
      json.encode(userData.toJson()),
    );
  }

  static Future<void> secureUserDataAndSetTokenIntoHeaders(
    LoginData userData,
  ) async {
    await _secureUserData(userData);
    DioFactory.setTokenIntoHeadersAfterLogin(userData.token);
  }

  static Future<LoginData> getSecuredUserData() async {
    final cachedUserData = await SecureStorageHelper.getSecuredString(
      CacheKeys.cachedUserData,
    );
    final userData = LoginData.fromJson(json.decode(cachedUserData));
    return userData;
  }
}

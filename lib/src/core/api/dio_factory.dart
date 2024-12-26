import 'package:dio/dio.dart';

import 'package:carey/src/core/api/dio_logger_interceptor.dart';
import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/core/datasources/user_local_data_source.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      _addDioHeaders();
      _addDioLoggerInterceptor();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void _addDioHeaders() async {
    final cachedUser =
        await SecureStorageHelper.getSecuredString(CacheKeys.cachedUserData);

    if (cachedUser.isNullOrEmpty == false) {
      final userData = await UserLocalDatasource.getSecuredUserData();
      _dio?.options.headers = {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${userData.token}',
      };
    }
  }

  static void _addDioLoggerInterceptor() {
    _dio?.interceptors.add(DioLoggerInterceptor());
  }

  static void setTokenIntoHeaders(String token) {
    _dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
}

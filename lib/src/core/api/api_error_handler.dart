import 'package:carey/src/core/api/api_error_message.dart';
import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return const ApiErrorModel(error: [ApiErrorMessage.timeoutError]);
        case DioExceptionType.sendTimeout:
          return const ApiErrorModel(error: [ApiErrorMessage.timeoutError]);
        case DioExceptionType.receiveTimeout:
          return const ApiErrorModel(error: [ApiErrorMessage.timeoutError]);
        case DioExceptionType.badResponse:
          return _handleError(error);
        case DioExceptionType.unknown:
          return _handleError(error);
        case DioExceptionType.cancel:
          return const ApiErrorModel(error: [ApiErrorMessage.defaultError]);
        case DioExceptionType.connectionError:
          return const ApiErrorModel(
              error: [ApiErrorMessage.noInternetConnection]);
        case DioExceptionType.badCertificate:
          return const ApiErrorModel(error: [ApiErrorMessage.defaultError]);
      }
    } else {
      return const ApiErrorModel(error: [ApiErrorMessage.defaultError]);
    }
  }

  static ApiErrorModel _handleError(DioException error) {
    if (error.response != null &&
        error.response?.statusCode != null &&
        error.response?.statusMessage != null) {
      return ApiErrorModel.fromJson(error.response!.data);
    } else {
      return const ApiErrorModel(error: [ApiErrorMessage.defaultError]);
    }
  }
}

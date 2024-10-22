import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:dio/dio.dart';

abstract class LoginRepo {
  Future<ApiResult<AuthResponseEntity>> loginViaPassword(
    AuthViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]);
}

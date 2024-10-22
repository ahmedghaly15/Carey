import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/features/auth/data/models/login_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:dio/dio.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponseEntity>> loginViaPassword(
    LoginViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]);
}

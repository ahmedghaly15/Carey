import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/features/login/data/models/login_via_email_and_password_request.dart';
import 'package:carey/src/features/login/domain/entities/login_response_entity.dart';
import 'package:dio/dio.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponseEntity>> loginViaEmailAndPassword(
    LoginViaEmailAndPasswordRequest params, [
    CancelToken? cancelToken,
  ]);
}

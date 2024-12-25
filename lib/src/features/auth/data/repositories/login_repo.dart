import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class LoginRepo {
  final LoginApiService _loginApiService;

  LoginRepo(this._loginApiService);

  Future<ApiResult<AuthResponseEntity>> loginViaPassword(
    AuthRequestParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<AuthResponseEntity>(
      () async => await _loginAndMapLoginResponse(params),
    );
  }

  Future<AuthResponseEntity> _loginAndMapLoginResponse(
    AuthRequestParams params,
  ) async {
    final loginResponse = await _loginApiService.loginViaPassword(params);
    final loginResponseEntity = AuthResponseEntity.toAuthEntity(
      user: loginResponse.data.user,
      token: loginResponse.data.token!,
    );
    return loginResponseEntity;
  }
}

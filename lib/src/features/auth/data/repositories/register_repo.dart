import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/register_api_service.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class RegisterRepo {
  final RegisterApiService _registerApiService;

  RegisterRepo(this._registerApiService);

  Future<ApiResult<AuthResponseEntity>> register(
    AuthViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors(
      () async => await _registerAndMapResponse(params, cancelToken),
    );
  }

  Future<AuthResponseEntity> _registerAndMapResponse(
    AuthViaPasswordRequest params,
    CancelToken? cancelToken,
  ) async {
    final registerResponse = await _registerApiService.register(
      params,
      cancelToken,
    );
    final authResponseEntity = AuthResponseEntity.toAuthEntity(
      user: registerResponse.data.newUser,
      token: registerResponse.data.token,
    );
    return authResponseEntity;
  }
}

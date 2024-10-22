import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/datasources/register_remote_data_source.dart';
import 'package:carey/src/features/auth/data/mapper/auth_mapper.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:carey/src/features/auth/domain/repositories/register_repo.dart';
import 'package:dio/dio.dart';

class RegisterRepoImpl implements RegisterRepo {
  final RegisterRemoteDataSource _registerRemoteDataSource;

  RegisterRepoImpl(this._registerRemoteDataSource);

  @override
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
    final registerResponse = await _registerRemoteDataSource
        .registerViaPassword(params, cancelToken);
    final authResponseEntity = AuthMapper.toAuthEntity(
      user: registerResponse.data.newUser,
      token: registerResponse.data.token,
    );
    return authResponseEntity;
  }
}

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/datasources/login_remote_data_source.dart';
import 'package:carey/src/features/auth/data/mapper/auth_mapper.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:dio/dio.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource _loginRemoteDataSource;

  LoginRepoImpl(this._loginRemoteDataSource);

  @override
  Future<ApiResult<AuthResponseEntity>> loginViaPassword(
    AuthViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<AuthResponseEntity>(
      () async => await _loginAndMapLoginResponse(params),
    );
  }

  Future<AuthResponseEntity> _loginAndMapLoginResponse(
    AuthViaPasswordRequest params,
  ) async {
    final loginResponse = await _loginRemoteDataSource.loginViaPassword(params);
    final loginResponseEntity = AuthMapper.toAuthEntity(
      user: loginResponse.data.user,
      token: loginResponse.data.token,
    );
    return loginResponseEntity;
  }
}

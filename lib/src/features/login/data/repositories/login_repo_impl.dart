import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/login/data/datasources/login_remote_data_source.dart';
import 'package:carey/src/features/login/data/models/login_via_email_and_password_request.dart';
import 'package:carey/src/features/login/domain/entities/login_response_entity.dart';
import 'package:carey/src/features/login/domain/repositories/login_repo.dart';
import 'package:dio/dio.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginRemoteDataSource _loginRemoteDataSource;

  LoginRepoImpl(this._loginRemoteDataSource);

  @override
  Future<ApiResult<LoginResponseEntity>> loginViaEmailAndPassword(
    LoginViaEmailAndPasswordRequest params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<LoginResponseEntity>(
      () async => await _loginAndMapLoginResponse(params),
    );
  }

  Future<LoginResponseEntity> _loginAndMapLoginResponse(
    LoginViaEmailAndPasswordRequest params,
  ) async {
    final loginResponse =
        await _loginRemoteDataSource.loginViaEmailAndPassword(params);
    final loginResponseEntity = LoginResponseEntity(loginResponse.data);
    return loginResponseEntity;
  }
}

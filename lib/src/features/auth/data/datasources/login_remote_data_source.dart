import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:carey/src/features/auth/data/models/login_via_password_request.dart';
import 'package:dio/dio.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> loginViaPassword(
    LoginViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginApiService _loginApiService;

  LoginRemoteDataSourceImpl(this._loginApiService);

  @override
  Future<LoginResponse> loginViaPassword(
    LoginViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) async {
    return _loginApiService.loginViaPassword(params);
  }
}

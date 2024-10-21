import 'package:carey/src/features/login/data/api/login_api_service.dart';
import 'package:carey/src/features/login/data/models/login_response.dart';
import 'package:carey/src/features/login/data/models/login_via_email_and_password_request.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> loginViaEmailAndPassword(
    LoginViaEmailAndPasswordRequest params,
  );
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginApiService _loginApiService;

  LoginRemoteDataSourceImpl(this._loginApiService);

  @override
  Future<LoginResponse> loginViaEmailAndPassword(
    LoginViaEmailAndPasswordRequest params,
  ) async {
    return _loginApiService.loginViaEmailAndPassword(params);
  }
}

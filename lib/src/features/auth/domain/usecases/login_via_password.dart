import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class LoginViaPassword
    implements
        ApiUseCase<AuthResponseEntity, AuthViaPasswordRequest, CancelToken?> {
  final LoginRepo _loginRepo;

  LoginViaPassword(this._loginRepo);

  @override
  Future<ApiResult<AuthResponseEntity>> call(
    AuthViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) async {
    return await _loginRepo.loginViaPassword(params);
  }
}

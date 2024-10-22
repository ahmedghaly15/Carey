import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/data/models/login_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';

class LoginViaPassword
    implements
        BaseUseCase<LoginResponseEntity, LoginViaPasswordRequest,
            CancelToken?> {
  final LoginRepo _loginRepo;

  LoginViaPassword(this._loginRepo);

  @override
  Future<ApiResult<LoginResponseEntity>> call(
    LoginViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) async {
    return await _loginRepo.loginViaPassword(params);
  }
}

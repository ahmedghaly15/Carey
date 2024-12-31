import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class LoginViaPassword
    implements ApiUseCase<AuthResponseEntity, AuthRequestParams, CancelToken?> {
  final LoginRepo _loginRepo;

  LoginViaPassword(this._loginRepo);

  @override
  Future<ApiResult<AuthResponseEntity>> call(
    AuthRequestParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _loginRepo.loginViaPassword(params);
  }
}

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:dio/dio.dart';

class FacebookSignIn implements BaseUseCase<void, NoParams, CancelToken?> {
  final LoginRepo _loginRepo;

  FacebookSignIn(this._loginRepo);

  @override
  Future<ApiResult<void>> call(
    NoParams params, [
    CancelToken? cancelToken,
  ]) async {
    return _loginRepo.facebookSignIn(cancelToken);
  }
}

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:dio/dio.dart';

class GoogleSignIn implements BaseUseCase<void, NoParams, CancelToken?> {
  final LoginRepo _loginRepo;

  GoogleSignIn(this._loginRepo);

  @override
  Future<ApiResult<void>> call(
    NoParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _loginRepo.googleSignIn(cancelToken);
  }
}

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/data/models/update_pass_params.dart';
import 'package:carey/src/features/auth/data/repositories/reset_pass_repo.dart';
import 'package:dio/dio.dart';

class UpdatePasswordUseCase
    implements BaseUseCase<void, UpdatePassParams, CancelToken?> {
  final ResetPassRepo _resetPassRepo;

  UpdatePasswordUseCase(this._resetPassRepo);

  @override
  Future<ApiResult<void>> call(
    UpdatePassParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _resetPassRepo.updatePassword(params, cancelToken);
  }
}

import 'package:dio/dio.dart';
import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/data/models/update_profile_img_params.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';

class UpdateProfileImg
    implements BaseUseCase<void, UpdateProfileImgParams, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  UpdateProfileImg(this._accountSetupRepo);

  @override
  Future<ApiResult<void>> call(
    UpdateProfileImgParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _accountSetupRepo.updateProfileImg(params, cancelToken);
  }
}

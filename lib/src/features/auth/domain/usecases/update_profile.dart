import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';
import 'package:dio/dio.dart';

class UpdateProfile
    implements BaseUseCase<void, UpdateProfileParams, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  UpdateProfile(this._accountSetupRepo);

  @override
  Future<ApiResult<void>> call(
    UpdateProfileParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _accountSetupRepo.updateProfile(params, cancelToken);
  }
}

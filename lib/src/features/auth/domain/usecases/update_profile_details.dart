import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';
import 'package:dio/dio.dart';

class UpdateProfileDetails
    implements ApiUseCase<void, UpdateProfileParams, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  UpdateProfileDetails(this._accountSetupRepo);

  @override
  Future<ApiResult<void>> call(
    UpdateProfileParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _accountSetupRepo.updateProfileDetails(params, cancelToken);
  }
}

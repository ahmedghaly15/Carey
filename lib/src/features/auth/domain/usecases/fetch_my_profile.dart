import 'package:carey/src/core/models/carey_user.dart';
import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';

class FetchMyProfile implements ApiUseCase<CareyUser, NoParams, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  FetchMyProfile(this._accountSetupRepo);

  @override
  Future<ApiResult<CareyUser>> call(
    NoParams params, [
    CancelToken? cancelToken,
  ]) async {
    return await _accountSetupRepo.fetchMyProfile(cancelToken);
  }
}

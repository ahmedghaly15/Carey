import 'dart:io';

import 'package:dio/dio.dart';
import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';

class UpdateProfileImg implements ApiUseCase<void, File, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  UpdateProfileImg(this._accountSetupRepo);

  @override
  Future<ApiResult<void>> call(
    File params, [
    CancelToken? cancelToken,
  ]) async {
    return await _accountSetupRepo.updateProfileImg(params, cancelToken);
  }
}

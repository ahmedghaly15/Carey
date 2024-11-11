import 'dart:io';

import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/account_setup_api_service.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';

class AccountSetupRepo {
  final AccountSetupApiService _accountSetupApiService;

  AccountSetupRepo(this._accountSetupApiService);

  Future<ApiResult<void>> updateProfileDetails(
    UpdateProfileParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => _accountSetupApiService.updateProfileDetails(
        params,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<void>> updateProfileImg(
    File imgFile, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _accountSetupApiService.updateProfileImg(
        imgFile,
        cancelToken,
      ),
    );
  }
}

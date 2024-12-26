import 'dart:io';

import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/models/carey_user.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/account_setup_api_service.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';

class AccountSetupRepo {
  final AccountSetupApiService _apiService;

  AccountSetupRepo(this._apiService);

  Future<ApiResult<void>> updateProfileDetails(
    UpdateProfileParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => _apiService.updateProfileDetails(
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
      () async => await _apiService.updateProfileImg(
        imgFile,
        cancelToken,
      ),
    );
  }

  Future<ApiResult<CareyUser>> fetchMyProfile([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<CareyUser>(() async {
      final response = await _apiService.fetchMyProfile(cancelToken);
      return response.data.user;
    });
  }
}

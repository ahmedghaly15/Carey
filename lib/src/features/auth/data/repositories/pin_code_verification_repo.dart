import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/pin_code_verification_api_service.dart';
import 'package:carey/src/features/auth/data/models/pin_code_verification_params.dart';

class PinCodeVerificationRepo {
  final PinCodeVerificationApiService _apiService;

  PinCodeVerificationRepo(this._apiService);

  Future<ApiResult<String>> verifyPin(
    PinCodeVerificationParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<String>(
      () async => await _verifyPinAndGetUserToken(params, cancelToken),
    );
  }

  Future<String> _verifyPinAndGetUserToken(
    PinCodeVerificationParams params,
    CancelToken? cancelToken,
  ) async {
    final result = await _apiService.verifyPin(
      currentUserData!.user.id,
      params,
      cancelToken,
    );
    final token = result.data.token!;
    return token;
  }
}

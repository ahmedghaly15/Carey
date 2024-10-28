import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/pin_code_verification_api_service.dart';
import 'package:carey/src/features/auth/data/models/pin_code_verification_params.dart';
import 'package:dio/dio.dart';

class PinCodeVerificationRepo {
  final PinCodeVerificationApiService _apiService;

  PinCodeVerificationRepo(this._apiService);

  Future<ApiResult<void>> verifyPin(
    PinCodeVerificationParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.verifyPin(
        currentUserData!.user.id,
        params,
        cancelToken,
      ),
    );
  }
}

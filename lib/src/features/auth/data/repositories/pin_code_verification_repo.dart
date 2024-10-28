import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/pin_code_verification_api_service.dart';
import 'package:carey/src/features/auth/data/models/pin_code_verification_params.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:dio/dio.dart';

class PinCodeVerificationRepo {
  final PinCodeVerificationApiService _apiService;

  PinCodeVerificationRepo(this._apiService);

  Future<ApiResult<AuthResponseEntity>> verifyPin(
    PinCodeVerificationParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<AuthResponseEntity>(
      () async => await _verifyPinAndGetUserToken(params, cancelToken),
    );
  }

  Future<AuthResponseEntity> _verifyPinAndGetUserToken(
    PinCodeVerificationParams params,
    CancelToken? cancelToken,
  ) async {
    final result = await _apiService.verifyPin(
      currentUserData!.user.id,
      params,
      cancelToken,
    );
    final authResponseEntity = AuthResponseEntity.toAuthEntity(
      user: result.data.user,
      token: result.data.token,
    );
    return authResponseEntity;
  }
}

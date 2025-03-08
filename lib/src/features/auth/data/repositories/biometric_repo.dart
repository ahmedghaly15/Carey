import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/services/local_auth.dart';
import 'package:carey/src/core/services/local_auth_error_handler.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/biometric_api_service.dart';
import 'package:carey/src/features/auth/data/models/create_biometric_params.dart';

class BiometricRepo {
  final LocalAuth localAuth;
  final BiometricApiService biometricApiService;

  BiometricRepo({
    required this.localAuth,
    required this.biometricApiService,
  });

  Future<ApiResult<bool>> setLocalBiometric() async {
    try {
      final canCheckBiometrics = await localAuth.canDeviceCheckBiometrics();
      if (canCheckBiometrics) {
        final authResult = await localAuth.authenticate();
        switch (authResult) {
          case LocalAuthResult.success:
            return const ApiResult.success(true);
          case LocalAuthResult.cancelled:
            return ApiResult.failure(
              LocalAuthErrorHandler.handleError(
                LocalAuthErrorMessages.authenticationCanceled,
              ),
            );
          case LocalAuthResult.error:
            return ApiResult.failure(
              LocalAuthErrorHandler.handleError(
                LocalAuthErrorMessages.authFailed,
              ),
            );
        }
      } else {
        return ApiResult.failure(
          LocalAuthErrorHandler.handleError(
            LocalAuthErrorMessages.biometricAuthIsNotSupported,
          ),
        );
      }
    } catch (e) {
      return ApiResult.failure(LocalAuthErrorHandler.handleError(e));
    }
  }

  Future<ApiResult<void>> createBiometric(
    CreateBiometricParams params,
  ) {
    return executeAndHandleErrors<void>(
      () async => await biometricApiService.createBiometric(params),
    );
  }
}

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
        final authenticate = await localAuth.authenticate();
        return ApiResult.success(authenticate);
      }
      return ApiResult.failure(
        LocalAuthErrorHandler.handleError(
          'Biometric authentication is not supported.',
        ),
      );
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

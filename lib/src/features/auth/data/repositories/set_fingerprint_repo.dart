import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/services/local_auth.dart';
import 'package:carey/src/core/services/local_auth_error_handler.dart';

class SetFingerprintRepo {
  final LocalAuth _localAuth;

  SetFingerprintRepo(this._localAuth);

  Future<ApiResult<bool>> authenticateFingerprint() async {
    try {
      final canCheckBiometrics = await _localAuth.canDeviceCheckBiometrics();
      if (canCheckBiometrics) {
        final authenticate = await _localAuth.authenticate();
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
}

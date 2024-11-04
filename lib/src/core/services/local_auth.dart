import 'package:carey/src/core/utils/app_strings.dart';
import 'package:local_auth/local_auth.dart';

enum LocalAuthResult {
  success,
  cancelled,
  error,
}

class LocalAuth {
  final LocalAuthentication _localAuth;

  LocalAuth(this._localAuth);

  Future<bool> canDeviceCheckBiometrics() async {
    return await _localAuth.canCheckBiometrics;
  }

  Future<LocalAuthResult> authenticate() async {
    try {
      final bool didAuthenticate = await _localAuth.authenticate(
        localizedReason: AppStrings.scanYourFingerprint,
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: false,
          biometricOnly: true,
        ),
      );
      // If authentication was successful, return success
      if (didAuthenticate) {
        return LocalAuthResult.success;
      } else {
        // If we reach here, authentication was canceled or failed
        return LocalAuthResult.cancelled;
      }
    } catch (e) {
      return LocalAuthResult.error;
    }
  }
}

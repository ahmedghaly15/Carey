import 'package:carey/src/core/utils/app_strings.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuth {
  final LocalAuthentication _localAuth;

  LocalAuth(this._localAuth);

  Future<bool> canDeviceCheckBiometrics() async {
    return await _localAuth.canCheckBiometrics;
  }

  Future<bool> authenticate() async => await _localAuth.authenticate(
        localizedReason: AppStrings.scanYourFingerprint,
        options: const AuthenticationOptions(
          useErrorDialogs: false,
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
}

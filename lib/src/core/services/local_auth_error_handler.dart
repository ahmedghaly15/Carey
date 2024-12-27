import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

import 'package:carey/src/core/api/api_error_model.dart';

class LocalAuthErrorHandler {
  LocalAuthErrorHandler._();

  static ApiErrorModel handleError(dynamic error) {
    if (error is PlatformException) {
      switch (error.code) {
        case 'auth_in_progress':
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.authInProgress],
          );
        case 'UserCanceled' || 'authentication_canceled':
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.authenticationCanceled],
          );
        case auth_error.notAvailable:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.notAvailable],
          );
        case auth_error.biometricOnlyNotSupported:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.biometricAuthIsNotSupported],
          );
        case auth_error.notEnrolled:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.notEnrolled],
          );
        case auth_error.lockedOut:
          return const ApiErrorModel(error: [LocalAuthErrorMessages.lockedOut]);
        case auth_error.otherOperatingSystem:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.otherOperatingSystem],
          );
        case auth_error.passcodeNotSet:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.passcodeNotSet],
          );
        case auth_error.permanentlyLockedOut:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.permanentlyLockedOut],
          );
        default:
          return const ApiErrorModel(
            error: [LocalAuthErrorMessages.authenticationCanceled],
          );
      }
    } else if (error is String) {
      return ApiErrorModel(error: [error]);
    }
    return const ApiErrorModel(
      error: [LocalAuthErrorMessages.authenticationCanceled],
    );
  }
}

class LocalAuthErrorMessages {
  LocalAuthErrorMessages._();

  static const String authInProgress =
      'Biometric authentication is in progress.';
  static const String authenticationCanceled =
      'Biometric authentication is canceled.';
  static const String notAvailable = 'Local authentication is not available.';
  static const String biometricAuthIsNotSupported =
      'Biometric authentication is not supported.';
  static const String notEnrolled = 'Biometric authentication is not enrolled.';
  static const String lockedOut = 'Biometric authentication is locked out.';
  static const String otherOperatingSystem =
      'Biometric authentication is not supported on this device.';
  static const String passcodeNotSet = 'Passcode authentication is not set.';
  static const String permanentlyLockedOut =
      'Biometric authentication is permanently locked out.';
  static const String authFailed = 'Authentication failed';
}

import 'package:carey/src/core/api/api_error_model.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:flutter/services.dart';

class LocalAuthErrorHandler {
  LocalAuthErrorHandler._();

  static ApiErrorModel handleError(dynamic error) {
    if (error is PlatformException) {
      switch (error.code) {
        case 'auth_in_progress':
          return const ApiErrorModel(
            error: ['Biometric authentication is in progress.'],
          );

        case 'UserCanceled' || 'authentication_canceled':
          return const ApiErrorModel(
            error: ['Biometric authentication is canceled.'],
          );

        case auth_error.notAvailable:
          return const ApiErrorModel(
            error: ['Local authentication is not available.'],
          );

        case auth_error.biometricOnlyNotSupported:
          return const ApiErrorModel(
            error: ['Biometric authentication is not supported.'],
          );

        case auth_error.notEnrolled:
          return const ApiErrorModel(
            error: ['Biometric authentication is not enrolled.'],
          );

        case auth_error.lockedOut:
          return const ApiErrorModel(
            error: ['Biometric authentication is locked out.'],
          );

        case auth_error.otherOperatingSystem:
          return const ApiErrorModel(
            error: [
              'Biometric authentication is not supported on this device.'
            ],
          );

        case auth_error.passcodeNotSet:
          return const ApiErrorModel(
            error: ['Passcode authentication is not set.'],
          );

        case auth_error.permanentlyLockedOut:
          return const ApiErrorModel(
            error: ['Biometric authentication is permanently locked out.'],
          );

        default:
          return const ApiErrorModel(
            error: ['Biometric authentication is canceled.'],
          );
      }
    }
    return const ApiErrorModel(
      error: ['Biometric authentication is canceled.'],
    );
  }
}

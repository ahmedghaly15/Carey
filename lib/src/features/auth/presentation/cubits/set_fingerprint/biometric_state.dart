import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/core/models/carey_user.dart';

part 'biometric_state.freezed.dart';

enum BiometricStateStatus {
  initial,
  updateProfileLoading,
  updateProfileSuccess,
  updateProfileError,
  setLocalBiometricLoading,
  setLocalBiometricSuccess,
  setLocalBiometricError,
  createBiometricLoading,
  createBiometricSuccess,
  createBiometricError,
  togglePasswordVisibility,
}

@freezed
class BiometricState with _$BiometricState {
  const factory BiometricState({
    required BiometricStateStatus status,
    @Default(false) bool fingerprintAuthenticated,
    String? error,
    CareyUser? careyUser,
    @Default(true) bool isPasswordObscured,
  }) = _BiometricState;

  factory BiometricState.initial() => const BiometricState(
        status: BiometricStateStatus.initial,
      );
}

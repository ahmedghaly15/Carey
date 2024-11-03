import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

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
    AuthResponseEntity? currentUserData,
    @Default(false) bool fingerprintAuthenticated,
    String? error,
    @Default(true) bool isPasswordObscured,
  }) = _BiometricState;

  factory BiometricState.initial() => const BiometricState(
        status: BiometricStateStatus.initial,
      );
}

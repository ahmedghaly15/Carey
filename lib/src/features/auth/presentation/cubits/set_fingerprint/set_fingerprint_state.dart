import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

part 'set_fingerprint_state.freezed.dart';

enum SetFingerprintStateStatus {
  initial,
  updateProfileLoading,
  updateProfileSuccess,
  updateProfileError,
  setFingerprintLoading,
  setFingerprintSuccess,
  setFingerprintError,
}

@freezed
class SetFingerprintState with _$SetFingerprintState {
  const factory SetFingerprintState({
    required SetFingerprintStateStatus status,
    AuthResponseEntity? currentUserData,
    @Default(false) bool fingerprintAuthenticated,
    String? error,
  }) = _SetFingerprintState;

  factory SetFingerprintState.initial() => const SetFingerprintState(
        status: SetFingerprintStateStatus.initial,
      );
}

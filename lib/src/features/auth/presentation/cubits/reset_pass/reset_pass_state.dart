import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_pass_state.freezed.dart';

enum ResetPassStateStatus {
  initial,
  toggleRememberMe,
  togglePasswordVisibility,
  toggleConfirmPassVisibility,
  resetPassLoading,
  resetPassSuccess,
  resetPassError,
}

@freezed
class ResetPassState with _$ResetPassState {
  const factory ResetPassState({
    required ResetPassStateStatus status,
    @Default(false) bool rememberMe,
    @Default(true) bool isPasswordObscured,
    @Default(true) bool isConfirmPassObscured,
    String? error,
  }) = _ResetPassState;

  factory ResetPassState.initial() => const ResetPassState(
        status: ResetPassStateStatus.initial,
      );
}

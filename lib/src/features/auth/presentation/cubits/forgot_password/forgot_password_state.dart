import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

enum ForgotPasswordStateStatus {
  initial,
  updateSelectedContactDetails,
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required ForgotPasswordStateStatus status,
    @Default(0) int selectedContactDetailsIndex,
    String? error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        status: ForgotPasswordStateStatus.initial,
      );
}

import 'package:carey/src/features/auth/data/models/contact_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

enum ForgotPasswordStateStatus {
  initial,
  updateSelectedContactDetails,
  getAccountByEmailLoading,
  getAccountByEmailSuccess,
  getAccountByEmailError,
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required ForgotPasswordStateStatus status,
    @Default(0) int selectedContactDetailsIndex,
    List<ContactDetails>? contactDetails,
    String? error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        status: ForgotPasswordStateStatus.initial,
      );
}

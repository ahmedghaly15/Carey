import 'package:carey/src/features/auth/domain/entities/get_account_by_email_entity.dart';
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
    GetAccountByEmailEntity? getAccountByEmailEntity,
    String? error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        status: ForgotPasswordStateStatus.initial,
      );
}

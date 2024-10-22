import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_setup_state.freezed.dart';

enum AccountSetupStateStatus {
  initial,
  updateUserLoading,
  updateUserSuccess,
  updateUserError,
  alwaysAutovalidateMode,
}

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState({
    required AccountSetupStateStatus status,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
  }) = _AccountSetupState;

  factory AccountSetupState.initial() => const AccountSetupState(
        status: AccountSetupStateStatus.initial,
      );
}

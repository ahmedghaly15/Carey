import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

part 'account_setup_state.freezed.dart';

enum AccountSetupStateStatus {
  initial,
  updateProfileLoading,
  updateProfileSuccess,
  updateProfileError,
  alwaysAutovalidateMode,
}

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState({
    required AccountSetupStateStatus status,
    AuthResponseEntity? currentUserData,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    String? error,
  }) = _AccountSetupState;

  factory AccountSetupState.initial() => const AccountSetupState(
        status: AccountSetupStateStatus.initial,
      );
}

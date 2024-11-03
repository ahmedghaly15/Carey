import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_setup_state.freezed.dart';

enum AccountSetupStateStatus {
  initial,
  alwaysAutovalidateMode,
  getCountryCode,
}

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState({
    required AccountSetupStateStatus status,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(AppConstants.defaultCountryCode) String countryCode,
  }) = _AccountSetupState;

  factory AccountSetupState.initial() => const AccountSetupState(
        status: AccountSetupStateStatus.initial,
      );
}

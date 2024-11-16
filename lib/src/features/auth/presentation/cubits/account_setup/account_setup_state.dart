import 'dart:io';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

part 'account_setup_state.freezed.dart';

enum AccountSetupStateStatus {
  initial,
  getCountryCode,
  updateProfileLoading,
  updateProfileSuccess,
  updateProfileError,
  alwaysAutovalidateMode,
  pickProfileImg,
  updateProfileImgLoading,
  updateProfileImgSuccess,
  updateProfileImgError,
}

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState({
    required AccountSetupStateStatus status,
    AuthResponseEntity? currentUserData,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    String? error,
    @Default(AppConstants.defaultCountryCode) String countryCode,
    File? pickedProfileImg,
  }) = _AccountSetupState;

  factory AccountSetupState.initial() => const AccountSetupState(
        status: AccountSetupStateStatus.initial,
      );
}

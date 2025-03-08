import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/core/models/carey_user.dart';
import 'package:carey/src/core/utils/app_constants.dart';

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
  fetchMyProfileLoading,
  fetchMyProfileSuccess,
  fetchMyProfileError,
}

@freezed
class AccountSetupState with _$AccountSetupState {
  const factory AccountSetupState({
    required AccountSetupStateStatus status,
    CareyUser? careyUser,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    String? error,
    @Default(AppConstants.defaultCountryCode) String countryCode,
    File? pickedProfileImg,
  }) = _AccountSetupState;

  factory AccountSetupState.initial() => const AccountSetupState(
        status: AccountSetupStateStatus.initial,
      );
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

enum RegisterStateStatus {
  initial,
  registerLoading,
  registerSuccess,
  registerError,
  alwaysAutovalidateMode,
  togglePasswordVisibility,
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required RegisterStateStatus status,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(true) bool isPasswordObscured,
    String? error,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState(
        status: RegisterStateStatus.initial,
      );
}

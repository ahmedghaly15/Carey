import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_state.freezed.dart';

enum AuthFormStateStatus {
  initial,
  toggleRememberMe,
  alwaysAutovalidateMode,
  togglePasswordVisibility,
}

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required AuthFormStateStatus status,
    @Default(false) bool rememberMe,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(true) bool isPasswordObscured,
  }) = _AuthFormState;

  factory AuthFormState.initial() => const AuthFormState(
        status: AuthFormStateStatus.initial,
      );
}

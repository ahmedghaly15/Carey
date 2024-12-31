import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

part 'login_state.freezed.dart';

enum LoginStateStatus {
  initial,
  loginViaPasswordLoading,
  loginViaPasswordSuccess,
  loginViaPasswordError,
  toggleRememberMe,
  alwaysAutovalidateMode,
  togglePasswordVisibility,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required LoginStateStatus status,
    @Default(false) bool rememberMe,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(true) bool isPasswordObscured,
    String? error,
    AuthResponseEntity? authEntity,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        status: LoginStateStatus.initial,
      );
}

import 'package:carey/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.togglePasswordVisibility(bool obscured) =
      TogglePasswordVisibility<T>;
  const factory LoginState.toggleRememberMe(bool rememberMe) =
      ToggleRememberMe<T>;
  const factory LoginState.loginViaPasswordLoading() =
      LoginViaPasswordLoading<T>;
  const factory LoginState.loginViaPasswordSuccess(
    LoginResponseEntity loginEntity,
  ) = LoginViaPasswordSuccess<T>;
  const factory LoginState.loginViaPasswordError(String error) =
      LoginViaPasswordError<T>;
  const factory LoginState.alwaysAutovalidateMode(
    AutovalidateMode autovalidateMode,
  ) = AlwaysAutovalidateMode<T>;
}

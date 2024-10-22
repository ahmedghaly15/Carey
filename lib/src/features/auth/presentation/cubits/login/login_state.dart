import 'package:carey/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginViaPasswordLoading() =
      LoginViaPasswordLoading<T>;
  const factory LoginState.loginViaPasswordSuccess(
    LoginResponseEntity loginEntity,
  ) = LoginViaPasswordSuccess<T>;
  const factory LoginState.loginViaPasswordError(String error) =
      LoginViaPasswordError<T>;
}

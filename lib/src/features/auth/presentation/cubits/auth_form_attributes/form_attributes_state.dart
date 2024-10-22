import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_attributes_state.freezed.dart';

enum FormAttributesStatus {
  initial,
  toggleRememberMe,
  alwaysAutovalidateMode,
  togglePasswordVisibility,
}

@freezed
class FormAttributesState with _$FormAttributesState {
  const factory FormAttributesState({
    required FormAttributesStatus status,
    @Default(false) bool rememberMe,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    @Default(true) bool isPasswordObscured,
  }) = _FormAttributesState;

  factory FormAttributesState.initial() => const FormAttributesState(
        status: FormAttributesStatus.initial,
      );
}

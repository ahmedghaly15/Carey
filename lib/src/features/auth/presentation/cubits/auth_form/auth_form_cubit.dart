import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/remember_me_helper.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_state.dart';

class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit() : super(AuthFormState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  void assignRememberedEmailAndPass() async {
    final rememberedEmail = await RememberMeHelper.getRememberedEmail();
    final rememberedPassword = await RememberMeHelper.getRememberedPass();
    if (!rememberedEmail.isNullOrEmpty) {
      emailController.text = rememberedEmail!;
      passwordController.text = rememberedPassword!;
    }
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: AuthFormStateStatus.togglePasswordVisibility,
      isPasswordObscured: !state.isPasswordObscured,
    ));
  }

  void toggleRememberMe() {
    emit(state.copyWith(
      status: AuthFormStateStatus.toggleRememberMe,
      rememberMe: !state.rememberMe,
    ));
  }

  void initRememberMe() async {
    final rememberedPass = await RememberMeHelper.getRememberedPass();
    emit(state.copyWith(
      status: AuthFormStateStatus.toggleRememberMe,
      rememberMe: (!rememberedPass.isNullOrEmpty) ? true : false,
    ));
  }

  void validateFormAndExecute(VoidCallback callback) {
    if (formKey.currentState!.validate()) {
      callback();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(state.copyWith(
      status: AuthFormStateStatus.alwaysAutovalidateMode,
      autovalidateMode: AutovalidateMode.always,
    ));
  }

  Future<void> handleRememberingEmailAndPassword() async {
    await RememberMeHelper.handleRememberingEmailAndPassword(
      isRemembered: state.rememberMe,
      emailValue: emailController.text.trim(),
      passwordValue: passwordController.text.trim(),
    );
  }

  void _disposeFormAttributes() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    return super.close();
  }
}

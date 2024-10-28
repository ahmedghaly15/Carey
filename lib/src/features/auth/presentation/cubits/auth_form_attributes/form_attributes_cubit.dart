import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/remember_me_helper.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_state.dart';

class FormAttributesCubit extends Cubit<FormAttributesState> {
  FormAttributesCubit() : super(FormAttributesState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initControllers();
    _initFocusNodes();
  }

  void _initFocusNodes() {
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  void _initControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
    emit(
      state.copyWith(
        status: FormAttributesStatus.togglePasswordVisibility,
        isPasswordObscured: !state.isPasswordObscured,
      ),
    );
  }

  void toggleRememberMe() {
    emit(
      state.copyWith(
        status: FormAttributesStatus.toggleRememberMe,
        rememberMe: !state.rememberMe,
      ),
    );
  }

  Future<void> initRememberMe() async {
    final rememberedPass = await RememberMeHelper.getRememberedPass();
    if (!rememberedPass.isNullOrEmpty) {
      emit(
        state.copyWith(
          status: FormAttributesStatus.toggleRememberMe,
          rememberMe: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: FormAttributesStatus.toggleRememberMe,
          rememberMe: false,
        ),
      );
    }
  }

  void validateFormAndExecute(VoidCallback callback) {
    if (formKey.currentState!.validate()) {
      callback();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(
      state.copyWith(
        status: FormAttributesStatus.alwaysAutovalidateMode,
        autovalidateMode: AutovalidateMode.always,
      ),
    );
  }

  Future<void> handleRememberingEmailAndPassword() async {
    if (state.rememberMe) {
      await RememberMeHelper.rememberEmailAndPassword(
        emailValue: emailController.text.trim(),
        passwordValue: passwordController.text,
      );
    } else {
      await RememberMeHelper.deleteRememberedEmailAndPassword();
    }
  }

  void _disposeFormAttributes() {
    _disposeControllers();
    _disposeFocusNodes();
  }

  void _disposeFocusNodes() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  void _disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    return super.close();
  }
}

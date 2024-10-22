import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_state.dart';

class FormAttributesCubit extends Cubit<FormAttributesState> {
  FormAttributesCubit() : super(FormAttributesState.initial()) {
    _initFormAttributes();
    _initRememberMe();
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
    _assignRememberedEmailAndPass();
  }

  void _initFocusNodes() {
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  void _initControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<String> _getRememberedPass() async =>
      await SecureStorageHelper.getSecuredString(
        CacheKeys.rememberedPassword,
      );

  void _assignRememberedEmailAndPass() async {
    final rememberedEmail =
        await SecureStorageHelper.getSecuredString(CacheKeys.rememberedEmail);
    final rememberedPassword = await _getRememberedPass();

    if (!rememberedEmail.isNullOrEmpty) {
      emailController.text = rememberedEmail;
      passwordController.text = rememberedPassword;
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

  Future<void> _initRememberMe() async {
    final rememberedPass = await _getRememberedPass();
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
      await _rememberEmailAndPassword();
    } else {
      await _deleteRememberedEmailAndPassword();
    }
  }

  Future<void> _rememberEmailAndPassword() async {
    await SecureStorageHelper.setSecuredString(
      CacheKeys.rememberedEmail,
      emailController.text,
    );
    await SecureStorageHelper.setSecuredString(
      CacheKeys.rememberedPassword,
      passwordController.text,
    );
  }

  Future<void> _deleteRememberedEmailAndPassword() async {
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedEmail,
    );
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedPassword,
    );
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

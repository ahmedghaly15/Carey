import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/remember_me_helper.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(
    this._loginRepo,
  ) : super(LoginState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

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
      status: LoginStateStatus.togglePasswordVisibility,
      isPasswordObscured: !state.isPasswordObscured,
    ));
  }

  void toggleRememberMe() {
    emit(state.copyWith(
      status: LoginStateStatus.toggleRememberMe,
      rememberMe: !state.rememberMe,
    ));
  }

  void initRememberMe() async {
    final rememberedPass = await RememberMeHelper.getRememberedPass();
    emit(state.copyWith(
      status: LoginStateStatus.toggleRememberMe,
      rememberMe: (!rememberedPass.isNullOrEmpty) ? true : false,
    ));
  }

  void _loginViaPassword() async {
    emit(state.copyWith(status: LoginStateStatus.loginViaPasswordLoading));
    final result = await _loginRepo.loginViaPassword(
      AuthViaPasswordRequest(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (loginResponseEntity) => emit(state.copyWith(
        status: LoginStateStatus.loginViaPasswordSuccess,
        authEntity: loginResponseEntity,
      )),
      failure: (failure) => emit(state.copyWith(
        status: LoginStateStatus.loginViaPasswordError,
        error: failure.error[0],
      )),
    );
  }

  void validateFormAndLogin() {
    if (formKey.currentState!.validate()) {
      _loginViaPassword();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(state.copyWith(
      status: LoginStateStatus.alwaysAutovalidateMode,
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
    _cancelToken.cancel();
    return super.close();
  }
}

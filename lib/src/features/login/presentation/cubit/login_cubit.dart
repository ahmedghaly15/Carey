import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/features/login/data/models/login_via_password_request.dart';
import 'package:carey/src/features/login/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/login/presentation/cubit/login_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginViaPassword _loginViaPasswordUseCase;

  LoginCubit(
    this._loginViaPasswordUseCase,
  ) : super(const LoginState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
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

  void _assignRememberedEmailAndPass() async {
    final rememberedEmail =
        await SecureStorageHelper.getSecuredString(CacheKeys.rememberedEmail);
    final rememberedPassword = await SecureStorageHelper.getSecuredString(
      CacheKeys.rememberedPassword,
    );

    if (!rememberedEmail.isNullOrEmpty) {
      emailController.text = rememberedEmail;
      passwordController.text = rememberedPassword;
    }
  }

  bool obscuredPassword = true;
  void togglePasswordVisibility() {
    obscuredPassword = !obscuredPassword;
    emit(LoginState.togglePasswordVisibility(obscuredPassword));
  }

  bool rememberMe = false;
  void toggleRememberMe() {
    rememberMe = !rememberMe;
    emit(LoginState.toggleRememberMe(rememberMe));
  }

  void _loginViaPassword() async {
    emit(const LoginState.loginViaPasswordLoading());
    final params = LoginViaPasswordRequest(
      email: emailController.text,
      password: passwordController.text,
    );
    final result = await _loginViaPasswordUseCase(
      params,
      _cancelToken,
    );
    result.when(
      success: (loginResponseEntity) =>
          emit(LoginState.loginViaPasswordSuccess(loginResponseEntity)),
      failure: (failure) =>
          emit(LoginState.loginViaPasswordError(failure.error[0])),
    );
  }

  void loginViaPassword() {
    if (formKey.currentState!.validate()) {
      _loginViaPassword();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    autovalidateMode = AutovalidateMode.always;
    emit(const LoginState.alwaysAutovalidateMode(AutovalidateMode.always));
  }

  Future<void> handleRememberingEmailAndPassword() async {
    if (rememberMe) {
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
    _cancelToken.cancel();
    return super.close();
  }
}

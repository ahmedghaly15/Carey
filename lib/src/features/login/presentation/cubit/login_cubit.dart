import 'package:carey/src/features/login/data/models/login_via_password_request.dart';
import 'package:carey/src/features/login/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginViaPassword _loginViaPassword;

  LoginCubit(
    this._loginViaPassword,
  ) : super(const LoginState.initial()) {
    // TODO: finish remember me logic
    _initFormAttributes();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autoValidateMode;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    autoValidateMode = AutovalidateMode.disabled;
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

  void loginViaPassword() async {
    emit(const LoginState.loginViaPasswordLoading());
    final params = LoginViaPasswordRequest(
      email: emailController.text,
      password: passwordController.text,
    );
    final result = await _loginViaPassword(params);
    result.when(
      success: (loginResponseEntity) =>
          emit(LoginState.loginViaPasswordSuccess(loginResponseEntity)),
      failure: (failure) =>
          emit(LoginState.loginViaPasswordError(failure.error[0])),
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

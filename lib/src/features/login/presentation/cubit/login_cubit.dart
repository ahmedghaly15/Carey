import 'package:carey/src/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial()) {
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

  @override
  Future<void> close() {
    _disposeFormAttributes();
    return super.close();
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
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/data/repositories/register_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(RegisterState.initial()) {
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

  void _register() async {
    emit(state.copyWith(status: RegisterStateStatus.registerLoading));
    final result = await _registerRepo.register(
      AuthViaPasswordRequest(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) {
        emailController.clear();
        passwordController.clear();
        emit(state.copyWith(status: RegisterStateStatus.registerSuccess));
      },
      failure: (failure) => emit(state.copyWith(
        status: RegisterStateStatus.registerError,
        error: failure.error[0],
      )),
    );
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: RegisterStateStatus.togglePasswordVisibility,
      isPasswordObscured: !state.isPasswordObscured,
    ));
  }

  void validateFormAndRegister() {
    if (formKey.currentState!.validate()) {
      _register();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(state.copyWith(
      status: RegisterStateStatus.alwaysAutovalidateMode,
      autovalidateMode: AutovalidateMode.always,
    ));
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

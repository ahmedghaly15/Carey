import 'package:carey/src/core/helpers/remember_me_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/models/update_pass_params.dart';
import 'package:carey/src/features/auth/domain/usecases/update_password.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  final UpdatePasswordUseCase _updatePassUseCase;

  ResetPassCubit(
    this._updatePassUseCase,
  ) : super(ResetPassState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();
  late final GlobalKey<FormState> formKey;
  late final TextEditingController passController;
  late final TextEditingController confirmPassController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void _resetPass() async {
    emit(state.copyWith(status: ResetPassStateStatus.resetPassLoading));
    final result = await _updatePassUseCase(
      UpdatePassParams(password: passController.text),
      _cancelToken,
    );
    result.when(
      success: (_) =>
          emit(state.copyWith(status: ResetPassStateStatus.resetPassSuccess)),
      failure: (failure) => emit(state.copyWith(
        status: ResetPassStateStatus.resetPassError,
        error: failure.error[0],
      )),
    );
  }

  void validateFormAndResetPass() {
    if (formKey.currentState!.validate()) {
      _resetPass();
    }
  }

  void togglePassVisibility() {
    emit(state.copyWith(
      status: ResetPassStateStatus.togglePasswordVisibility,
      isPasswordObscured: !state.isPasswordObscured,
    ));
  }

  void toggleConfirmPassVisibility() {
    emit(state.copyWith(
      status: ResetPassStateStatus.toggleConfirmPassVisibility,
      isConfirmPassObscured: !state.isConfirmPassObscured,
    ));
  }

  void toggleRememberMe() {
    emit(state.copyWith(
      status: ResetPassStateStatus.toggleRememberMe,
      rememberMe: !state.rememberMe,
    ));
  }

  Future<void> handleRememberingEmailAndPassword() async {
    await RememberMeHelper.handleRememberingEmailAndPassword(
      isRemembered: state.rememberMe,
      emailValue: currentUserData!.user.email!,
      passwordValue: passController.text,
    );
  }

  void _disposeControllers() {
    passController.dispose();
    confirmPassController.dispose();
  }

  @override
  Future<void> close() {
    _disposeControllers();
    _cancelToken.cancel();
    return super.close();
  }
}

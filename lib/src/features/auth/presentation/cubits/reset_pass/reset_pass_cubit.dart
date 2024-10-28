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
    _initControllers();
  }

  void _initControllers() {
    passController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  void _resetPass() async {
    emit(state.copyWith(status: ResetPassStateStatus.resetPassLoading));
    final params = UpdatePassParams(password: passController.text);
    final result = await _updatePassUseCase(params, _cancelToken);
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

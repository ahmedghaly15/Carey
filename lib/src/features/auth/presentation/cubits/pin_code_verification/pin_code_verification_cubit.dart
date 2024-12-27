import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/pin_code_verification_params.dart';
import 'package:carey/src/features/auth/data/repositories/pin_code_verification_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_state.dart';

class PinCodeVerificationCubit extends Cubit<PinCodeVerificationState> {
  final PinCodeVerificationRepo _repo;
  PinCodeVerificationCubit(
    this._repo,
  ) : super(const PinCodeVerificationState.initial()) {
    pinController = TextEditingController();
  }

  final CancelToken _cancelToken = CancelToken();
  late final TextEditingController pinController;

  void verifyPin() async {
    emit(const PinCodeVerificationState.verifyLoading());
    final result = await _repo.verifyPin(
      PinCodeVerificationParams(pin: pinController.text),
      _cancelToken,
    );
    result.when(
      success: (token) => emit(PinCodeVerificationState.verifySuccess(token)),
      failure: (failure) =>
          emit(PinCodeVerificationState.verifyError(failure.error[0])),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    pinController.dispose();
    return super.close();
  }
}

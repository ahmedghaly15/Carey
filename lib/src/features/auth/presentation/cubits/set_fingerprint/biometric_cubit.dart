import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/models/create_biometric_params.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/data/repositories/biometric_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_details.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';

class BiometricCubit extends Cubit<BiometricState> {
  final BiometricRepo biometricRepo;
  final UpdateProfileDetails updateProfileDetailsUseCase;

  BiometricCubit({
    required this.updateProfileDetailsUseCase,
    required this.biometricRepo,
  }) : super(BiometricState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final GlobalKey<FormState> formKey;
  late final TextEditingController passwordController;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    passwordController = TextEditingController();
  }

  void updateProfile() async {
    emit(state.copyWith(
      status: BiometricStateStatus.updateProfileLoading,
    ));
    final result = await updateProfileDetailsUseCase(
      UpdateProfileParams(
        biometricVerified: state.fingerprintAuthenticated,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: BiometricStateStatus.updateProfileSuccess,
        careyUser: currentUserData!.user.copyWith(
          biometricVerified: state.fingerprintAuthenticated,
        ),
      )),
      failure: (failure) => emit(
        state.copyWith(
          status: BiometricStateStatus.updateProfileError,
          error: failure.error[0],
        ),
      ),
    );
  }

  void setLocalBiometric() async {
    emit(state.copyWith(
      status: BiometricStateStatus.setLocalBiometricLoading,
    ));
    final result = await biometricRepo.setLocalBiometric();
    result.when(
      success: (fingerprintAuthenticated) => emit(state.copyWith(
        status: BiometricStateStatus.setLocalBiometricSuccess,
        fingerprintAuthenticated: fingerprintAuthenticated,
      )),
      failure: (failure) => emit(state.copyWith(
        status: BiometricStateStatus.setLocalBiometricError,
        error: failure.error[0],
      )),
    );
  }

  void _createBiometric(String password) async {
    emit(state.copyWith(
      status: BiometricStateStatus.createBiometricLoading,
    ));
    final result = await biometricRepo.createBiometric(
      CreateBiometricParams(password: password),
    );
    result.when(
      success: (_) => emit(state.copyWith(
        status: BiometricStateStatus.createBiometricSuccess,
      )),
      failure: (failure) => emit(state.copyWith(
        status: BiometricStateStatus.createBiometricError,
        error: failure.error[0],
      )),
    );
  }

  void validatePassAndCreateBiometric() {
    if (formKey.currentState!.validate()) {
      _createBiometric(passwordController.text);
    }
  }

  void togglePassVisibility() => emit(state.copyWith(
        status: BiometricStateStatus.togglePasswordVisibility,
        isPasswordObscured: !state.isPasswordObscured,
      ));

  @override
  Future<void> close() {
    passwordController.dispose();
    _cancelToken.cancel();
    return super.close();
  }
}

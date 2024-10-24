import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_state.dart';

class SetFingerprintCubit extends Cubit<SetFingerprintState> {
  final UpdateProfile _updateProfileUseCase;

  SetFingerprintCubit(
    this._updateProfileUseCase,
  ) : super(SetFingerprintState.initial());

  final CancelToken _cancelToken = CancelToken();

  void updateProfile(UpdateProfileParams params) async {
    emit(
      state.copyWith(
        status: SetFingerprintStateStatus.updateProfileLoading,
      ),
    );
    final result = await _updateProfileUseCase(
      params,
      _cancelToken,
    );
    result.when(
      success: (_) async {
        await _updateCurrentUserDataAndSecureIt(params);
        emit(
          state.copyWith(
            status: SetFingerprintStateStatus.updateProfileSuccess,
            currentUserData: currentUserData,
          ),
        );
      },
      failure: (failure) => emit(
        state.copyWith(
          status: SetFingerprintStateStatus.updateProfileError,
          error: failure.error[0],
        ),
      ),
    );
  }

  Future<void> _updateCurrentUserDataAndSecureIt(
    UpdateProfileParams params,
  ) async {
    currentUserData = currentUserData!.copyWith(
      user: currentUserData!.user.copyWith(
        fullName: params.fullName,
        nickName: params.nickName,
        address: params.address,
        phone: params.phone,
        gender: params.gender,
      ),
    );
    await AuthLocalDataSource.secureUserData(currentUserData!);
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

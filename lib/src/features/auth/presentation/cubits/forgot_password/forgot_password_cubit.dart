import 'package:carey/src/features/auth/data/models/get_account_by_email_params.dart';
import 'package:carey/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepo _forgotPasswordRepo;

  ForgotPasswordCubit(
    this._forgotPasswordRepo,
  ) : super(ForgotPasswordState.initial());

  final CancelToken _cancelToken = CancelToken();

  void updateSelectedContactDetails(int index) {
    if (state.selectedContactDetailsIndex != index) {
      emit(
        state.copyWith(
          status: ForgotPasswordStateStatus.updateSelectedContactDetails,
          selectedContactDetailsIndex: index,
        ),
      );
    }
  }

  void getAccountByEmail(String email) async {
    emit(state.copyWith(
      status: ForgotPasswordStateStatus.getAccountByEmailLoading,
    ));
    final params = GetAccountByEmailParams(email: email);
    final result =
        await _forgotPasswordRepo.getAccountByEmail(params, _cancelToken);
    result.when(
      success: (getAccountByEmailEntity) => emit(state.copyWith(
        status: ForgotPasswordStateStatus.getAccountByEmailSuccess,
        getAccountByEmailEntity: getAccountByEmailEntity,
      )),
      failure: (failure) => emit(state.copyWith(
        status: ForgotPasswordStateStatus.getAccountByEmailError,
        error: failure.error[0],
      )),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

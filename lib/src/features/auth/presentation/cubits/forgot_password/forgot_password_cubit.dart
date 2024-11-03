import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/models/get_account_by_email_params.dart';
import 'package:carey/src/features/auth/data/models/send_pin_params.dart';
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
      success: (contactDetails) => emit(state.copyWith(
        status: ForgotPasswordStateStatus.getAccountByEmailSuccess,
        contactDetails: contactDetails,
        selectedContactDetailsIndex:
            contactDetails[0].contact.isNullOrEmpty ? 1 : 0,
      )),
      failure: (failure) => emit(state.copyWith(
        status: ForgotPasswordStateStatus.getAccountByEmailError,
        error: failure.error[0],
      )),
    );
  }

  void sendPin() async {
    emit(state.copyWith(status: ForgotPasswordStateStatus.sendPinLoading));
    final params = SendPinParams(userId: currentUserData!.user.id);
    final result = state.selectedContactDetailsIndex == 0
        ? await _forgotPasswordRepo.sendSmsPin(params)
        : await _forgotPasswordRepo.sendMailPin(params);
    result.when(
      success: (_) => emit(
          state.copyWith(status: ForgotPasswordStateStatus.sendPinSuccess)),
      failure: (failure) => emit(state.copyWith(
        status: ForgotPasswordStateStatus.sendPinError,
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

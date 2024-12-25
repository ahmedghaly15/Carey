import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/models/contact_details.dart';
import 'package:carey/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepo _forgotPasswordRepo;

  ForgotPasswordCubit(
    this._forgotPasswordRepo,
  ) : super(ForgotPasswordState.initial());

  final CancelToken _cancelToken = CancelToken();

  void updateSelectedContactDetails(int index) {
    if (state.selectedContactDetailsIndex != index) {
      emit(state.copyWith(
        status: ForgotPasswordStateStatus.updateSelectedContactDetails,
        selectedContactDetailsIndex: index,
      ));
    }
  }

  List<ContactDetails>? get contactDetails => state.contactDetails;

  void getUserContactDetails(String email) async {
    emit(state.copyWith(
      status: ForgotPasswordStateStatus.getAccountByEmailLoading,
    ));
    final result = await _forgotPasswordRepo.getUserContactDetails(
      AuthRequestParams(email: email),
      _cancelToken,
    );
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
    final result = await _forgotPasswordRepo.sendPin(
      pinSendMethod: state
          .contactDetails![state.selectedContactDetailsIndex].pinSendMethod,
      cancelToken: _cancelToken,
    );
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

import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordState.initial());

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
}

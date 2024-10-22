import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/login_via_password_request.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginViaPassword _loginViaPasswordUseCase;

  LoginCubit(
    this._loginViaPasswordUseCase,
  ) : super(const LoginState.initial());

  final CancelToken _cancelToken = CancelToken();

  void loginViaPassword(LoginViaPasswordRequest params) async {
    emit(const LoginState.loginViaPasswordLoading());
    final result = await _loginViaPasswordUseCase(
      params,
      _cancelToken,
    );
    result.when(
      success: (loginResponseEntity) =>
          emit(LoginState.loginViaPasswordSuccess(loginResponseEntity)),
      failure: (failure) =>
          emit(LoginState.loginViaPasswordError(failure.error[0])),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

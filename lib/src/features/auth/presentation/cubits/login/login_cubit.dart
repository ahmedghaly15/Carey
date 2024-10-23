import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/domain/usecases/google_sign_in.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginViaPassword _loginViaPasswordUseCase;
  final GoogleSignIn _googleSignIn;

  LoginCubit(
    this._loginViaPasswordUseCase,
    this._googleSignIn,
  ) : super(const LoginState.initial());

  final CancelToken _cancelToken = CancelToken();

  void loginViaPassword(AuthViaPasswordRequest params) async {
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

  void googleSignIn() async {
    emit(const LoginState.socialLoginLoading());
    final result = await _googleSignIn(
      const NoParams(),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(const LoginState.socialLoginSuccess()),
      failure: (failure) => emit(LoginState.socialLoginError(failure.error[0])),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

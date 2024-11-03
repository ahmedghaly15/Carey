import 'package:carey/src/features/auth/data/repositories/login_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(
    this._loginRepo,
  ) : super(const LoginState.initial());

  final CancelToken _cancelToken = CancelToken();

  void loginViaPassword(AuthViaPasswordRequest params) async {
    emit(const LoginState.loginViaPasswordLoading());
    final result = await _loginRepo.loginViaPassword(
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

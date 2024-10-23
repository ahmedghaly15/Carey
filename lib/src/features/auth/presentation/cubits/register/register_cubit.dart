import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/data/repositories/register_repo.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final CancelToken _cancelToken = CancelToken();

  void register(AuthViaPasswordRequest params) async {
    emit(const RegisterState.registerLoading());
    final result = await _registerRepo.register(params, _cancelToken);
    result.when(
      success: (_) => emit(const RegisterState.registerSuccess()),
      failure: (failure) => emit(RegisterState.registerError(failure.error[0])),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginViaPasswordButtonBlocListener extends StatelessWidget {
  const LoginViaPasswordButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        onPressed: () => _loginViaPass(context),
        text: AppStrings.signIn,
      ),
    );
  }

  bool _listenWhen(LoginState<dynamic> current) {
    return current is LoginViaPasswordError ||
        current is LoginViaPasswordSuccess ||
        current is LoginViaPasswordLoading;
  }

  void _loginViaPass(BuildContext context) {
    final formAttributesCubit = context.read<FormAttributesCubit>();
    final params = AuthViaPasswordRequest(
      email: formAttributesCubit.emailController.text.trim(),
      password: formAttributesCubit.passwordController.text,
    );
    formAttributesCubit.validateFormAndExecute(
      () => context.read<LoginCubit>().loginViaPassword(params),
    );
  }

  void _listener(LoginState state, BuildContext context) {
    state.whenOrNull(
      loginViaPasswordLoading: () => _loginViaPasswordLoading(context),
      loginViaPasswordError: (error) => _loginViaPasswordError(context, error),
      loginViaPasswordSuccess: (authEntity) async {
        await _loginViaPasswordSuccess(context, authEntity);
      },
    );
  }

  Future<void> _loginViaPasswordSuccess(
    BuildContext context,
    AuthResponseEntity authEntity,
  ) async {
    context.popTop();
    await _rememberMeAndSecureUserData(context, authEntity);
    // Either Home screen or AccountSetup screen
    _goNextView(authEntity.user.fullName, context);
  }

  void _loginViaPasswordError(BuildContext context, String error) {
    context.popTop();
    context.showErrorDialog(error);
  }

  void _loginViaPasswordLoading(BuildContext context) {
    context.unfocusKeyboard();
    context.showLoadingDialog();
  }

  Future<void> _rememberMeAndSecureUserData(
    BuildContext context,
    AuthResponseEntity authEntity,
  ) async {
    await context
        .read<FormAttributesCubit>()
        .handleRememberingEmailAndPassword();
    await AuthLocalDataSource.setAndSecureUserDataAndSetTokenIntoHeaders(
      authEntity,
    );
  }

  void _goNextView(String? fullName, BuildContext context) {
    if (fullName.isNullOrEmpty) {
      // User hasn't filled his profile before
      context.replaceRoute(const AccountSetupRoute());
    } else {
      // User has filled his profile before
    }
  }
}

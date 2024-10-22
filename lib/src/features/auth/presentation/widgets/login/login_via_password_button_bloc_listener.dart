import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

import 'package:carey/src/features/auth/data/datasources/login_local_data_source.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViaPasswordButtonBlocListener extends StatelessWidget {
  const LoginViaPasswordButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (_, current) =>
          current is LoginViaPasswordError ||
          current is LoginViaPasswordSuccess ||
          current is LoginViaPasswordLoading,
      listener: (context, state) => _loginViaPasswordListener(state, context),
      child: PrimaryButton(
        onPressed: () => _loginViaPass(context),
        text: AppStrings.signIn,
      ),
    );
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

  void _loginViaPasswordListener(LoginState state, BuildContext context) {
    state.whenOrNull(
      loginViaPasswordLoading: () {
        context.unfocusKeyboard();
        context.showLoadingDialog();
      },
      loginViaPasswordError: (error) {
        context.popTop();
        context.showErrorDialog(error);
      },
      loginViaPasswordSuccess: (authEntity) async {
        await _handleRememberMeAndSecureUserData(context, authEntity);
        // TODO: navigate to home
      },
    );
  }

  Future<void> _handleRememberMeAndSecureUserData(
    BuildContext context,
    AuthResponseEntity authEntity,
  ) async {
    await context
        .read<FormAttributesCubit>()
        .handleRememberingEmailAndPassword();
    context.popTop();
    await LoginLocalDataSource.secureUserDataAndSetTokenIntoHeaders(
      authEntity.token,
    );
  }
}

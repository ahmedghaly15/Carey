import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterButtonBlocListener extends StatelessWidget {
  const RegisterButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        onPressed: () => _register(context),
        text: AppStrings.signUp,
      ),
    );
  }

  bool _listenWhen(RegisterState<dynamic> current) {
    return current is RegisterLoading ||
        current is RegisterError ||
        current is RegisterSuccess;
  }

  void _register(BuildContext context) {
    final formAttributesCubit = context.read<AuthFormCubit>();
    final params = AuthViaPasswordRequest(
      email: formAttributesCubit.emailController.text.trim(),
      password: formAttributesCubit.passwordController.text,
    );
    formAttributesCubit.validateFormAndExecute(
      () => context.read<RegisterCubit>().register(params),
    );
  }

  void _listener(RegisterState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      registerLoading: () => _registerLoading(context),
      registerError: (error) => _registerError(context, error),
      registerSuccess: () async {
        await _handleRememberingAndShowResultDialog(context);
      },
    );
  }

  void _registerError(BuildContext context, String error) {
    context.popTop();
    context.showErrorDialog(error);
  }

  void _registerLoading(BuildContext context) {
    context.unfocusKeyboard();
    context.showLoadingDialog();
  }

  Future<void> _handleRememberingAndShowResultDialog(
    BuildContext context,
  ) async {
    await context.read<AuthFormCubit>().handleRememberingEmailAndPassword();
    context.popTop();
    _clearFormControllers(context);
    context.showResultDialog(
      contentText: AppStrings.accountCreatedSuccessfully,
    );
  }

  void _clearFormControllers(BuildContext context) {
    final formAttributesCubit = context.read<AuthFormCubit>();
    formAttributesCubit.emailController.clear();
    formAttributesCubit.passwordController.clear();
  }
}

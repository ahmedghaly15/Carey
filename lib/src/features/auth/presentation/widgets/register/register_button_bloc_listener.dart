import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterButtonBlocListener extends StatelessWidget {
  const RegisterButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (_, current) =>
          current is RegisterLoading ||
          current is RegisterError ||
          current is RegisterSuccess,
      listener: (context, state) => _registerListener(state, context),
      child: PrimaryButton(
        onPressed: () => _register(context),
        text: AppStrings.signUp,
      ),
    );
  }

  void _register(BuildContext context) {
    final formAttributesCubit = context.read<FormAttributesCubit>();
    final params = AuthViaPasswordRequest(
      email: formAttributesCubit.emailController.text.trim(),
      password: formAttributesCubit.passwordController.text,
    );
    formAttributesCubit.validateFormAndExecute(
      () => context.read<RegisterCubit>().register(params),
    );
  }

  void _registerListener(RegisterState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      registerLoading: () {
        context.unfocusKeyboard();
        context.showLoadingDialog();
      },
      registerError: (error) {
        context.popTop();
        context.showErrorDialog(error);
      },
      registerSuccess: (_) async {
        await context
            .read<FormAttributesCubit>()
            .handleRememberingEmailAndPassword();
        context.popTop();

        // TODO: move to fill user data or show him a dialog relling him that he should veify his email
      },
    );
  }
}

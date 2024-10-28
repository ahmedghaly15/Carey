import 'package:carey/src/core/helpers/text_form_validator.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final resetPassCubit = context.read<ResetPassCubit>();
    return Form(
      key: resetPassCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocSelector<ResetPassCubit, ResetPassState, bool>(
            selector: (state) => state.isPasswordObscured,
            builder: (context, state) => PassTextFormField(
              controller: resetPassCubit.passController,
              passVisibilityOnTap: () => resetPassCubit.togglePassVisibility(),
              obscureText: state,
            ),
          ),
          MySizedBox.height33,
          BlocSelector<ResetPassCubit, ResetPassState, bool>(
            selector: (state) => state.isConfirmPassObscured,
            builder: (context, state) => PassTextFormField(
              controller: resetPassCubit.confirmPassController,
              passVisibilityOnTap: () =>
                  resetPassCubit.toggleConfirmPassVisibility(),
              obscureText: state,
              autofillHints: const [AutofillHints.newPassword],
              validate: (_) => TextFormValidator.validateConfirmPass(
                pass: resetPassCubit.passController.text,
                confirmPass: resetPassCubit.confirmPassController.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

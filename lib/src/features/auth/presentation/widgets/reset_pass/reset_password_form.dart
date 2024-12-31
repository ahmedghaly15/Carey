import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/text_form_validator.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final resetPassCubit = context.read<ResetPassCubit>();
    return Form(
      key: resetPassCubit.formKey,
      child: Column(
        spacing: 33.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocSelector<ResetPassCubit, ResetPassState, bool>(
            selector: (state) => state.isPasswordObscured,
            builder: (_, isPasswordObscured) => PassTextFormField(
              controller: resetPassCubit.passController,
              passVisibilityOnTap: () => resetPassCubit.togglePassVisibility(),
              obscureText: isPasswordObscured,
            ),
          ),
          BlocSelector<ResetPassCubit, ResetPassState, bool>(
            selector: (state) => state.isConfirmPassObscured,
            builder: (_, isConfirmPassObscured) => PassTextFormField(
              controller: resetPassCubit.confirmPassController,
              hintText: AppStrings.confirmPass,
              passVisibilityOnTap: () =>
                  resetPassCubit.toggleConfirmPassVisibility(),
              obscureText: isConfirmPassObscured,
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

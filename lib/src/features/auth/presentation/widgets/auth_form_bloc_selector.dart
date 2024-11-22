import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';

class AuthFormBlocSelector extends StatelessWidget {
  const AuthFormBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final formAttributesCubit = context.read<AuthFormCubit>();
    return BlocSelector<AuthFormCubit, AuthFormState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (_, autovalidateMode) => Form(
        key: formAttributesCubit.formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            EmailTextFormField(
              controller: formAttributesCubit.emailController,
              focusNode: formAttributesCubit.emailFocusNode,
              passFocusNode: formAttributesCubit.passwordFocusNode,
            ),
            MySizedBox.height13,
            BlocSelector<AuthFormCubit, AuthFormState, bool>(
              selector: (state) => state.isPasswordObscured,
              builder: (_, isPasswordObscured) => PassTextFormField(
                obscureText: isPasswordObscured,
                controller: formAttributesCubit.passwordController,
                focusNode: formAttributesCubit.passwordFocusNode,
                passVisibilityOnTap: () =>
                    formAttributesCubit.togglePassVisibility(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

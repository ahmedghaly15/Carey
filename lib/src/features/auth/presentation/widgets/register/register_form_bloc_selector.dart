import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';

class RegisterFormBlocSelector extends StatelessWidget {
  const RegisterFormBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return BlocSelector<RegisterCubit, RegisterState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (_, autovalidateMode) => Form(
        key: registerCubit.formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            EmailTextFormField(
              controller: registerCubit.emailController,
              focusNode: registerCubit.emailFocusNode,
              passFocusNode: registerCubit.passwordFocusNode,
            ),
            MySizedBox.height13,
            BlocSelector<RegisterCubit, RegisterState, bool>(
              selector: (state) => state.isPasswordObscured,
              builder: (_, isPasswordObscured) => PassTextFormField(
                obscureText: isPasswordObscured,
                controller: registerCubit.passwordController,
                focusNode: registerCubit.passwordFocusNode,
                passVisibilityOnTap: () => registerCubit.togglePassVisibility(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

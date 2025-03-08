import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';

class LoginFormBlocSelector extends StatelessWidget {
  const LoginFormBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return BlocSelector<LoginCubit, LoginState, AutovalidateMode>(
      selector: (state) => state.autovalidateMode,
      builder: (_, autovalidateMode) => Form(
        key: loginCubit.formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            EmailTextFormField(
              controller: loginCubit.emailController,
              focusNode: loginCubit.emailFocusNode,
              passFocusNode: loginCubit.passwordFocusNode,
            ),
            MySizedBox.height13,
            BlocSelector<LoginCubit, LoginState, bool>(
              selector: (state) => state.isPasswordObscured,
              builder: (_, isPasswordObscured) => PassTextFormField(
                obscureText: isPasswordObscured,
                controller: loginCubit.passwordController,
                focusNode: loginCubit.passwordFocusNode,
                passVisibilityOnTap: () => loginCubit.togglePassVisibility(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

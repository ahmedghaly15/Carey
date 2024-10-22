import 'package:carey/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (_, current) => current is AlwaysAutovalidateMode,
      builder: (_, __) => Form(
        key: loginCubit.formKey,
        autovalidateMode: loginCubit.autovalidateMode,
        child: Column(
          children: [
            EmailTextFormField(
              controller: loginCubit.emailController,
              focusNode: loginCubit.emailFocusNode,
              passFocusNode: loginCubit.passwordFocusNode,
            ),
            MySizedBox.height13,
            BlocBuilder<LoginCubit, LoginState>(
              buildWhen: (_, current) => current is TogglePasswordVisibility,
              builder: (_, __) => PassTextFormField(
                obscureText: loginCubit.obscuredPassword,
                controller: loginCubit.passwordController,
                focusNode: loginCubit.passwordFocusNode,
                passVisibilityOnTap: () =>
                    loginCubit.togglePasswordVisibility(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formAttributesCubit = context.read<FormAttributesCubit>();
    return BlocBuilder<FormAttributesCubit, FormAttributesState>(
      buildWhen: (_, current) =>
          current.autovalidateMode != AutovalidateMode.disabled,
      builder: (_, state) => Form(
        key: formAttributesCubit.formKey,
        autovalidateMode: state.autovalidateMode,
        child: Column(
          children: [
            EmailTextFormField(
              controller: formAttributesCubit.emailController,
              focusNode: formAttributesCubit.emailFocusNode,
              passFocusNode: formAttributesCubit.passwordFocusNode,
            ),
            MySizedBox.height13,
            BlocBuilder<FormAttributesCubit, FormAttributesState>(
              buildWhen: (previous, current) =>
                  previous.isPasswordObscured != current.isPasswordObscured,
              builder: (_, state) => PassTextFormField(
                obscureText: state.isPasswordObscured,
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
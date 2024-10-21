import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/auth_validator.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:carey/src/features/login/presentation/cubit/login_state.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            controller: loginCubit.emailController,
            focusNode: loginCubit.emailFocusNode,
            keyboardType: TextInputType.emailAddress,
            hintText: AppStrings.email,
            autofillHints: const [AutofillHints.email],
            prefixSvgIcon: Assets.svgsEmailIcon,
            onEditingComplete: () =>
                context.requestFocus(loginCubit.passwordFocusNode),
            validate: (String? value) =>
                AuthValidator.validateEmailField(value),
          ),
          MySizedBox.height13,
          BlocBuilder<LoginCubit, LoginState>(
            buildWhen: (_, current) => current is TogglePasswordVisibility,
            builder: (_, __) => CustomTextFormField(
              controller: loginCubit.passwordController,
              focusNode: loginCubit.passwordFocusNode,
              keyboardType: TextInputType.visiblePassword,
              hintText: AppStrings.password,
              autofillHints: const [AutofillHints.password],
              obscureText: loginCubit.obscuredPassword,
              prefixSvgIcon: Assets.svgsLockIcon,
              suffixIcon: IconButton(
                onPressed: () {
                  loginCubit.togglePasswordVisibility();
                },
                icon: Icon(
                  loginCubit.obscuredPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.primaryColor.withOpacity(0.7),
                ),
              ),
              validate: (String? value) =>
                  AuthValidator.validatePasswordField(value),
              onSubmit: (_) {},
            ),
          ),
        ],
      ),
    );
  }
}

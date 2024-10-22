import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_form.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_view_title_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/login_via_password_button_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_bloc_builder.dart';
import 'package:carey/src/features/auth/presentation/widgets/social_login_icon_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key, this.isPushedFromRegister = false});

  final bool isPushedFromRegister;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppConstants.screenHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.careyIcon),
            const AuthViewTitleText(title: AppStrings.loginToYourAccount),
            MySizedBox.height40,
            const AuthForm(),
            const RememberMeBlocBuilder(),
            const LoginViaPasswordButtonBlocListener(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryColor,
                textStyle: AppTextStyles.font15Regular,
              ),
              child: const Text(AppStrings.forgotThePassword),
            ),
            const AuthCustomDividerWithText(
              text: '${AppStrings.or} ${AppStrings.continueWith}',
            ),
            MySizedBox.height19,
            const SocialLoginIconButtons(),
            AuthSwitcher(
              buttonText: AppStrings.signUp,
              question: AppStrings.dontHaveAnAccount,
              onPressed: () {
                isPushedFromRegister
                    ? context.maybePop()
                    : context.pushRoute(RegisterRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}

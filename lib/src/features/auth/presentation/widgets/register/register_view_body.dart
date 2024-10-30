import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_form_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_view_title_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/register/register_button_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_remember_me_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/social_login_icon_buttons.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key, this.isPushedFromLogin = true});

  final bool isPushedFromLogin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppConstants.screenHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.careyIcon),
            const AuthViewTitleText(title: AppStrings.createYourAccount),
            MySizedBox.height40,
            const AuthFormBlocSelector(),
            const AuthRememberMeBlocSelector(),
            const RegisterButtonBlocListener(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 19.h),
              child: const AuthCustomDividerWithText(
                text: '${AppStrings.or} ${AppStrings.continueWith}',
              ),
            ),
            const SocialLoginIconButtons(),
            AuthSwitcher(
              buttonText: AppStrings.signIn,
              question: AppStrings.alreadyHaveAnAccount,
              onPressed: () {
                isPushedFromLogin
                    ? context.maybePop()
                    : context.pushRoute(LoginRoute(isPushedFromRegister: true));
              },
            ),
          ],
        ),
      ),
    );
  }
}

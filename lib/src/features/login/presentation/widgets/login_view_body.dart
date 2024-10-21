import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/core/widgets/auth_switcher.dart';
import 'package:carey/src/core/widgets/auth_view_title_text.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/core/widgets/remember_me.dart';
import 'package:carey/src/core/widgets/slide_animated_carey_icon.dart';
import 'package:carey/src/core/widgets/social_login_icon_buttons.dart';
import 'package:carey/src/features/login/presentation/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppConstants.screenHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SlideAnimatedCareyIcon(),
            const AuthViewTitleText(title: AppStrings.loginToYourAccount),
            MySizedBox.height40,
            const LoginForm(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 19.h),
              child: const RememberMe(),
            ),
            PrimaryButton(
              onPressed: () {},
              text: AppStrings.signIn,
            ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

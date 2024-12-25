import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/core/widgets/slide_animated_widget.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/social_login_buttons.dart';

@RoutePage()
class LoginMethodsView extends StatelessWidget {
  const LoginMethodsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.screenHorizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.h),
                child: SlideAnimatedWidget(
                  begin: const Offset(-2, 0),
                  child: Image.asset(Assets.careyIcon),
                ),
              ),
              Text(
                AppStrings.letsSignYouIn,
                style: AppTextStyles.poppinsFont45Medium,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 16.h, bottom: 48.h),
                child: const SocialLoginButtons(),
              ),
              const AuthCustomDividerWithText(text: AppStrings.or),
              PrimaryButton(
                onPressed: () => context.replaceRoute(LoginRoute()),
                text: AppStrings.signInWithPassword,
                margin: EdgeInsets.only(top: 38.h, bottom: 24.h),
              ),
              AuthSwitcher(
                margin: EdgeInsetsDirectional.only(start: 53.w, end: 55.w),
                onPressed: () {
                  context.replaceRoute(RegisterRoute(isPushedFromLogin: false));
                },
                question: AppStrings.dontHaveAnAccount,
                buttonText: AppStrings.signUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

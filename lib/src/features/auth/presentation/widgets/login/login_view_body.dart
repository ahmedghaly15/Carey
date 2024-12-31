import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_view_title_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/login_form_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/login_via_password_button_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/social_login_icon_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key, this.isPushedFromRegister = false});

  final bool isPushedFromRegister;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.screenHorizontalPadding,
      child: CustomScrollView(
        slivers: [
          if (isPushedFromRegister) const CustomSliverAppBar(),
          SliverToBoxAdapter(child: Image.asset(Assets.careyIcon)),
          const SliverToBoxAdapter(
            child: AuthViewTitleText(title: AppStrings.loginToYourAccount),
          ),
          const SliverToBoxAdapter(child: MySizedBox.height40),
          const SliverToBoxAdapter(child: LoginFormBlocSelector()),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 19.h),
              child: RememberMeCheckBoxBlocSelector<LoginCubit, LoginState>(
                selector: (state) => state.rememberMe,
                onChanged: (_) => context.read<LoginCubit>().toggleRememberMe(),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: LoginViaPasswordButtonBlocListener()),
          SliverToBoxAdapter(
            child: TextButton(
              onPressed: () => _forgotPassOnPressed(context),
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryColor,
                textStyle: AppTextStyles.font15Regular,
              ),
              child: const Text(AppStrings.forgotThePassword),
            ),
          ),
          const SliverToBoxAdapter(
            child: AuthCustomDividerWithText(
              text: '${AppStrings.or} ${AppStrings.continueWith}',
            ),
          ),
          const SliverToBoxAdapter(child: MySizedBox.height19),
          const SliverToBoxAdapter(child: SocialLoginIconButtons()),
          SliverToBoxAdapter(
            child: AuthSwitcher(
              buttonText: AppStrings.signUp,
              question: AppStrings.dontHaveAnAccount,
              onPressed: () => _pushRegisterRouteOrPop(context),
            ),
          ),
        ],
      ),
    );
  }

  void _pushRegisterRouteOrPop(BuildContext context) {
    isPushedFromRegister
        ? context.maybePop()
        : context.pushRoute(RegisterRoute());
  }

  void _forgotPassOnPressed(BuildContext context) {
    final email = context.read<LoginCubit>().emailController.text;
    if (email.isEmpty) {
      context.showErrorDialog(AppStrings.writeYourEmailFirst);
    } else {
      context.pushRoute(ForgotPasswordRoute(email: email));
    }
  }
}

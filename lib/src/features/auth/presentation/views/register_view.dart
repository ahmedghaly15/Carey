import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_custom_divider_with_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:carey/src/features/auth/presentation/widgets/auth_view_title_text.dart';
import 'package:carey/src/features/auth/presentation/widgets/register/register_button_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/register/register_form_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/social_login_icon_buttons.dart';

@RoutePage()
class RegisterView extends StatelessWidget implements AutoRouteWrapper {
  const RegisterView({super.key, this.isPushedFromLogin = true});

  final bool isPushedFromLogin;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (_) => getIt.get<RegisterCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenHorizontalPadding,
          child: CustomScrollView(
            slivers: [
              if (context.router.canPop()) const CustomSliverAppBar(),
              SliverToBoxAdapter(child: Image.asset(Assets.careyIcon)),
              const SliverToBoxAdapter(
                child: AuthViewTitleText(title: AppStrings.createYourAccount),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 40.h, bottom: 18.h),
                  child: const RegisterFormBlocSelector(),
                ),
              ),
              const SliverToBoxAdapter(child: RegisterButtonBlocListener()),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 19.h),
                  child: const AuthCustomDividerWithText(
                    text: '${AppStrings.or} ${AppStrings.continueWith}',
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SocialLoginIconButtons()),
              SliverToBoxAdapter(
                child: AuthSwitcher(
                  buttonText: AppStrings.signIn,
                  question: AppStrings.alreadyHaveAnAccount,
                  onPressed: () => _pushLoginRouteOrPop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pushLoginRouteOrPop(BuildContext context) {
    isPushedFromLogin
        ? context.maybePop()
        : context.pushRoute(LoginRoute(isPushedFromRegister: true));
  }
}

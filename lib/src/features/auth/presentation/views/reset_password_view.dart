import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/reset_pass/reset_pass_continue_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/reset_pass/reset_pass_remember_me_bloc_selector.dart';
import 'package:carey/src/features/auth/presentation/widgets/reset_pass/reset_password_form.dart';

@RoutePage()
class ResetPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ResetPasswordView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ResetPassCubit>.value(
      value: getIt.get<ResetPassCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.resetPassword),
            SliverToBoxAdapter(
              child: SvgPicture.asset(Assets.svgsResetPassImage),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsetsDirectional.only(
                  top: 27.h,
                  bottom: 27.h,
                  start: 18.w,
                ),
                child: Text(
                  AppStrings.createYourNewPassword,
                  style: AppTextStyles.font16Medium,
                ),
              ),
            ),
            SliverPadding(
              padding: AppConstants.screenHorizontalPadding,
              sliver: const SliverToBoxAdapter(child: ResetPasswordForm()),
            ),
            const SliverToBoxAdapter(child: MySizedBox.height33),
            const SliverToBoxAdapter(child: ResetPassRememberMeBlocSelector()),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  ResetPassContinueBlocListener(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

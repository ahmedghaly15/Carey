import 'package:auto_route/auto_route.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/contact_details_list_bloc_builder.dart';
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
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ForgotPasswordView({super.key, required this.email});

  final String email;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (_) => getIt.get<ForgotPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.forgotPassword),
            SliverToBoxAdapter(
              child: SvgPicture.asset(Assets.svgsSomethingWrong),
            ),
            SliverPadding(
              padding: AppConstants.screenHorizontalPadding.add(
                EdgeInsets.only(top: 24.h),
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  AppStrings.selectWhichContactDetails,
                  style: AppTextStyles.font16Regular,
                ),
              ),
            ),
            SliverPadding(
              padding: AppConstants.screenHorizontalPadding.add(
                EdgeInsets.symmetric(vertical: 24.h),
              ),
              sliver: const SliverToBoxAdapter(
                  child: ContactDetailsListBlocBuilder()),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  PrimaryButton(
                    margin: AppConstants.screenHorizontalPadding.add(
                      EdgeInsets.only(bottom: 24.h),
                    ),
                    onPressed: () {},
                    text: AppStrings.continueWord,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

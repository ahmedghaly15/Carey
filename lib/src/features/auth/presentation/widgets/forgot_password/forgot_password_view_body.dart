import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/contact_details_list.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/forgot_pass_continue_bloc_listener.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
            child: ContactDetailsList(),
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Spacer(),
              ForgotPassContinueBlocListener(),
            ],
          ),
        ),
      ],
    );
  }
}

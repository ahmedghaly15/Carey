import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/contact_details_list_bloc_builder.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              child: ContactDetailsListBlocBuilder(),
            ),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class NoProductsWidget extends StatelessWidget {
  const NoProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.svgsSomethingWrong),
          Container(
            margin: EdgeInsets.symmetric(vertical: 32.h),
            child: Text(
              AppStrings.thisBrandHasNoCars,
              style: AppTextStyles.font18Regular,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

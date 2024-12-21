import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class ChooseShippingTypeContainer extends StatelessWidget {
  const ChooseShippingTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.w),
      decoration: AppConstants.checkoutContainerDecoration,
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 19.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Row(
          children: [
            SvgPicture.asset(Assets.svgsChooseShippingCarIcon),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  AppStrings.chooseShippingType,
                  style: AppTextStyles.poppinsFont15SemiBold.copyWith(
                    color: Colors.black.withOpacity(0.75),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}

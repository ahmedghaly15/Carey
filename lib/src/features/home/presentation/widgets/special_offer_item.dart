import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 154,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          start: 20.w,
          end: 16.w,
          top: 20.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '20%',
                      style: AppTextStyles.font35Bold,
                    ),
                  ),
                  Text(
                    'Week Deals!',
                    style: AppTextStyles.font20Bold,
                  ),
                  Text(
                    'Get a new car discount.\nOnly valid this week',
                    style: AppTextStyles.font12Bold.copyWith(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.width10,
            Expanded(
              child: Image.asset(
                Assets.imagesCarTest,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

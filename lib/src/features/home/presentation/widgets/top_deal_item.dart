import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class TopDealItem extends StatelessWidget {
  const TopDealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 167 / 113,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.colorD9D9D9.withOpacity(0.67),
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border, size: 16.h),
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(Assets.imagesCarTest, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
        MySizedBox.height12,
        Text('BMW M4 Series', style: AppTextStyles.font15Bold),
        Row(
          children: [
            const Icon(
              Icons.star_half_rounded,
            ),
            Text(
              '4.6',
              style: AppTextStyles.font10Bold.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7),
              ),
            ),
            Container(
              width: 2.0.w,
              height: 14.0.h,
              margin: EdgeInsets.symmetric(horizontal: 6.w),
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 2.h,
                horizontal: 6.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.colorD9D9D9,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text('New', style: AppTextStyles.font8Bold),
            ),
          ],
        ),
        Text('\$190.000', style: AppTextStyles.font15Bold),
      ],
    );
  }
}

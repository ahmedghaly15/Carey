import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class CheckoutOrderItem extends StatelessWidget {
  const CheckoutOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.w),
      padding: EdgeInsetsDirectional.only(
        top: 13.h,
        bottom: 18.h,
        start: 7.h,
        end: 10.w,
      ),
      decoration: AppConstants.checkoutContainerDecoration,
      child: Row(
        children: [
          Expanded(child: Image.asset(Assets.imagesCarTest)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BMW M5 Series',
                  style: AppTextStyles.poppinsFont20Medium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 9.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.colorD9D9D9,
                        radius: 7.r,
                      ),
                      MySizedBox.width7,
                      Text(
                        'Sliver',
                        style: AppTextStyles.poppinsFont13Medium.copyWith(
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$${formatIntWithCommas(170000)}',
                  style: AppTextStyles.poppinsFont20Medium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

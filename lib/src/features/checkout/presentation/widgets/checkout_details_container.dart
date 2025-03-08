import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';

class CheckoutDetailsContainer extends StatelessWidget {
  const CheckoutDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 13.h, horizontal: 29.w),
      padding: EdgeInsetsDirectional.only(
        top: 21.h,
        start: 19.w,
        end: 16.w,
        bottom: 17.h,
      ),
      decoration: AppConstants.checkoutContainerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            3,
            (index) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Text(
                'Amount',
                style: AppTextStyles.poppinsFont13Medium,
              ),
              trailing: Text(
                '\$${formatIntWithCommas(170000)}',
                style: AppTextStyles.poppinsFont13Medium,
              ),
            ),
            growable: false,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 8.h),
            child: Divider(
              color: AppColors.colorD9D9D9,
              thickness: 1.w,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              'Amount',
              style: AppTextStyles.poppinsFont13Medium,
            ),
            trailing: Text(
              '\$${formatIntWithCommas(170000)}',
              style: AppTextStyles.poppinsFont13Medium,
            ),
          ),
        ],
      ),
    );
  }
}

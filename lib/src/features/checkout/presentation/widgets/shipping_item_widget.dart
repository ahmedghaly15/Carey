import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';

class ShippingItemWidget extends StatelessWidget {
  const ShippingItemWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
    this.leading,
  });

  final Widget title, subTitle;
  final Widget? trailing, leading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppConstants.checkoutContainerDecoration,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        onTap: onTap,
        contentPadding: EdgeInsetsDirectional.symmetric(
          horizontal: 7.w,
          vertical: 19.h,
        ),
        leading: Container(
          padding: EdgeInsets.all(7.h),
          decoration: const BoxDecoration(
            color: AppColors.colorD9D9D9,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.primaryColor,
            child: leading,
          ),
        ),
        title: title,
        titleTextStyle: AppTextStyles.poppinsFont15SemiBold.copyWith(
          color: Colors.black,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        subtitle: subTitle,
        subtitleTextStyle: AppTextStyles.poppinsFont13Medium.copyWith(
          color: Colors.black.withAlpha(153),
        ),
        trailing: trailing,
      ),
    );
  }
}

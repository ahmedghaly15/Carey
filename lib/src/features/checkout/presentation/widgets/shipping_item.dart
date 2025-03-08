import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/condition_label.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    this.hasDefaultBadge = false,
    this.trailing,
  });

  final String title, subTitle;
  final Widget? trailing;
  final bool hasDefaultBadge;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.w),
      decoration: AppConstants.checkoutContainerDecoration,
      child: ListTile(
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
            child: const Icon(Icons.location_on, color: Colors.white),
          ),
        ),
        title: (title == 'Home' && hasDefaultBadge)
            ? Row(
                spacing: 10.w,
                children: [
                  _buildTitleTextWidget(),
                  ConditionLabel(
                    conditionLabel: AppStrings.defaultWord,
                    conditionTextStyle:
                        AppTextStyles.poppinsFont13Medium.copyWith(
                      color: Colors.black.withAlpha(192),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
                  ),
                ],
              )
            : _buildTitleTextWidget(),
        titleTextStyle: AppTextStyles.poppinsFont15SemiBold.copyWith(
          color: Colors.black,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        subtitle: Text(
          subTitle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        subtitleTextStyle: AppTextStyles.poppinsFont13Medium.copyWith(
          color: Colors.black.withAlpha(153),
        ),
        trailing: trailing,
      ),
    );
  }

  Text _buildTitleTextWidget() {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}

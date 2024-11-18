import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConditionLabel extends StatelessWidget {
  const ConditionLabel({
    super.key,
    this.conditionLabel = AppStrings.newWord,
    this.borderRadius = 10,
    this.padding,
    this.conditionTextStyle,
    this.backgroundColor,
  });

  final String conditionLabel;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? conditionTextStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: 2.h,
            horizontal: 6.w,
          ),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.colorD9D9D9,
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: Text(
        conditionLabel,
        style: conditionTextStyle ?? AppTextStyles.font8Bold,
      ),
    );
  }
}

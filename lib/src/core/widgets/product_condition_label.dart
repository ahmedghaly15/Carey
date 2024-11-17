import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductConditionLabel extends StatelessWidget {
  const ProductConditionLabel({
    super.key,
    this.conditionLabel = AppStrings.newWord,
  });

  final String conditionLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 6.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.colorD9D9D9,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(conditionLabel, style: AppTextStyles.font8Bold),
    );
  }
}

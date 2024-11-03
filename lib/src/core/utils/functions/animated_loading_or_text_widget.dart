import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget animatedLoadingOrTextWidget({
  required bool isLoading,
  required String text,
}) {
  return isLoading
      ? SizedBox.square(
          dimension: 24.h,
          child: const AnimatedLoadingIndicator(color: Colors.white),
        )
      : Text(
          text,
          style: AppTextStyles.font20SemiBoldWhite,
        );
}

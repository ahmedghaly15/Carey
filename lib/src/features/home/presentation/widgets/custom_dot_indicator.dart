import 'package:carey/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 24.w : 5.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.primaryColor
            : AppColors.primaryColor.withOpacity(0.17),
        borderRadius: isActive ? BorderRadius.circular(5.r) : null,
        shape: isActive ? BoxShape.rectangle : BoxShape.circle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/home/presentation/widgets/custom_dot_indicator.dart';

class CustomDotsIndicators extends StatelessWidget {
  const CustomDotsIndicators({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 2.w),
          child: CustomDotIndicator(isActive: index == pageIndex),
        ),
      ),
    );
  }
}

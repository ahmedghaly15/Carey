import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  AppConstants._();

  static EdgeInsetsGeometry screenHorizontalPadding =
      EdgeInsetsDirectional.only(start: 19.w, end: 16.w);
  static ShapeBorder get dialogShape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      );
}

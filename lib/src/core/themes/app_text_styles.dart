import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get font90BoldWhite => TextStyle(
        fontSize: 90.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );
  static TextStyle get font40SemiBoldWhite => TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get font20SemiBoldWhite => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get font15SemiBoldWhite => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get font35Bold => TextStyle(
        fontSize: 35.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font18Regular => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );
}

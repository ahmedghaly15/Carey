import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
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
  static TextStyle get font20Bold => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
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
  static TextStyle get font30SemiBold => TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get font18Regular => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get font18Medium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get font20Regular => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get font25SemiBold => TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get font13Regular => TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get font15Regular => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get poppinsFont45Medium => TextStyle(
        fontSize: 45.sp,
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get poppinsFont27Medium => TextStyle(
        fontSize: 27.sp,
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get poppinsFont25Medium => TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get poppinsFont14RegularDarkGrey => TextStyle(
        fontFamily: AppStrings.poppinsFontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.closerToDark.withOpacity(0.63),
      );
  static TextStyle get poppinsFont14SemiBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get poppinsFont20SemiBold => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get poppinsFont12Regular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        fontFamily: AppStrings.poppinsFontFamily,
      );
  static TextStyle get hintTextStyle => font13Regular.copyWith(
        color: AppColors.primaryColor.withOpacity(0.25),
      );
  static TextStyle get font16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get font16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get font16Bold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font15Bold => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font12Bold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font10Bold => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font8Bold => TextStyle(
        fontSize: 8.sp,
        fontWeight: FontWeight.bold,
      );
}

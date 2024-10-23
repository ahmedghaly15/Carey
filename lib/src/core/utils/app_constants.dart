import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

AuthResponseEntity? currentUserData;
bool isUserLoggedIn = false;
bool isCurrentUserAccountSet = false;

class AppConstants {
  AppConstants._();

  static EdgeInsetsGeometry screenHorizontalPadding =
      EdgeInsetsDirectional.only(start: 19.w, end: 16.w);
  static ShapeBorder get dialogShape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      );
  static OutlineInputBorder get textFormFieldOutlineBorder =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(
          color: AppColors.primaryColor.withOpacity(0.1),
          width: 1.w,
        ),
      );
  static EdgeInsetsGeometry get textFormFieldHorizontalPadding =>
      EdgeInsets.symmetric(horizontal: 12.w);
  static const List<DropdownMenuItem<String>> genderDropdownItems =
      <DropdownMenuItem<String>>[
    DropdownMenuItem(
      value: AppStrings.male,
      child: Text(AppStrings.male),
    ),
    DropdownMenuItem(
      value: AppStrings.female,
      child: Text(AppStrings.female),
    ),
  ];
}

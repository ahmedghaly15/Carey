import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/auth/data/models/contact_details.dart';
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

  static const List<ContactDetails> forgotPassContactDetails = [
    ContactDetails(
      name: AppStrings.sms,
      icon: Assets.svgsSmsIcon,
    ),
    ContactDetails(
      name: AppStrings.email,
      icon: Assets.svgsEmailIcon,
    ),
  ];
  static const String defaultCountryCode = 'EG';
  static const double screenHorizontalPaddingVal = 17;
  static const List<Color> productColors = <Color>[
    AppColors.colorD9D9D9,
    AppColors.primaryColor,
    Color(0xff4CA4D6),
    Color(0xffB00D0D),
    Color(0xff1A1151),
  ];
  static const double productDetailsStartPadVal = 23;
  static const double pad19 = 19;
  static Decoration get checkoutContainerDecoration => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4.h),
            blurRadius: 4.r,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      );

  static List<String> rates = [
    AppStrings.all,
    '5',
    '4',
    '3',
    '2',
    '1',
  ];
}

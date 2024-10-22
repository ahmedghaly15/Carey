import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

LoginData? currentUserData;
bool isUserLoggedIn = false;
bool isCurrentUserAccountSet = false;

class AppConstants {
  AppConstants._();

  static EdgeInsetsGeometry screenHorizontalPadding =
      EdgeInsetsDirectional.only(start: 19.w, end: 16.w);
}

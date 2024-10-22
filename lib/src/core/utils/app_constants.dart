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
}

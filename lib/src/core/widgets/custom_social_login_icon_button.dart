import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/features/login/data/models/social_login_method.dart';

class CustomSocialLoginIconButton extends StatelessWidget {
  const CustomSocialLoginIconButton({
    super.key,
    required this.method,
    required this.index,
  });

  final SocialLoginMethod method;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == SocialLoginMethod.socialLoginMethods.length - 1
          ? EdgeInsets.zero
          : EdgeInsetsDirectional.only(end: 36.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.25),
          width: 1.w,
        ),
      ),
      child: MaterialButton(
        onPressed: method.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: EdgeInsetsDirectional.only(
          start: 19.w,
          end: 19.w,
          top: 10.h,
          bottom: 11.h,
        ),
        child: SvgPicture.asset(method.svgIcon),
      ),
    );
  }
}

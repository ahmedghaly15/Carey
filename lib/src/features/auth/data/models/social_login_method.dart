import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/launch_this_url.dart';
import 'package:flutter/material.dart';

class SocialLoginMethod {
  final String? name;
  final String svgIcon;
  final VoidCallback onPressed;

  SocialLoginMethod({
    this.name,
    required this.svgIcon,
    required this.onPressed,
  });

  static List<SocialLoginMethod> socialLoginMethods = [
    SocialLoginMethod(
      name: AppStrings.facebook,
      svgIcon: Assets.svgsFacebook,
      onPressed: () {},
    ),
    SocialLoginMethod(
      name: AppStrings.google,
      svgIcon: Assets.svgsGoogle,
      onPressed: () => launchThisUrl(EndPoints.googleSignIn),
    ),
  ];
}

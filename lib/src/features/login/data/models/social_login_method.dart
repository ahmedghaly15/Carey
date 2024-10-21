import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
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
      onPressed: () {},
    ),
  ];
}

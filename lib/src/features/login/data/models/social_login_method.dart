import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class SocialLoginMethod {
  final String name, icon;
  final VoidCallback onPressed;

  SocialLoginMethod({
    required this.name,
    required this.icon,
    required this.onPressed,
  });

  static List<SocialLoginMethod> socialLoginMethods = [
    SocialLoginMethod(
      name: AppStrings.facebook,
      icon: Assets.svgsFacebook,
      onPressed: () {},
    ),
    SocialLoginMethod(
      name: AppStrings.google,
      icon: Assets.svgsGoogle,
      onPressed: () {},
    ),
  ];
}

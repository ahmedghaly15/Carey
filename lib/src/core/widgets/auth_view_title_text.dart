import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthViewTitleText extends StatelessWidget {
  const AuthViewTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.poppinsFont27Medium,
    );
  }
}

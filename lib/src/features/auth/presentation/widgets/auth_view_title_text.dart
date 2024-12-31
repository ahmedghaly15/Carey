import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';

class AuthViewTitleText extends StatelessWidget {
  const AuthViewTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        title,
        style: AppTextStyles.poppinsFont27Medium,
      ),
    );
  }
}

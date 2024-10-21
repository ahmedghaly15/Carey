import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';

class AuthCustomDividerWithText extends StatelessWidget {
  const AuthCustomDividerWithText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: CustomDivider(),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            text,
            style: AppTextStyles.font13Regular,
          ),
        ),
        const Expanded(
          child: CustomDivider(),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1.0,
      color: AppColors.primaryColor,
    );
  }
}

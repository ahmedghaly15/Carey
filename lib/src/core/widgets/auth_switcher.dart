import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthSwitcher extends StatelessWidget {
  const AuthSwitcher({
    super.key,
    required this.buttonText,
    required this.question,
    required this.onPressed,
    this.margin,
  });

  final String buttonText, question;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question,
            style: AppTextStyles.poppinsFont14RegularDarkGrey,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}

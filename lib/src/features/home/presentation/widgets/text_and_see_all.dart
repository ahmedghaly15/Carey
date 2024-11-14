import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class TextAndSeeAll extends StatelessWidget {
  const TextAndSeeAll({
    super.key,
    required this.text,
    required this.seeAllOnPressed,
  });

  final String text;
  final VoidCallback seeAllOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.font20Bold,
        ),
        TextButton(
          onPressed: seeAllOnPressed,
          child: const Text(AppStrings.seeAll),
        ),
      ],
    );
  }
}

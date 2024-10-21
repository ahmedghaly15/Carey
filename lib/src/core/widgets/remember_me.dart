import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: value,
            activeColor: Colors.black,
            onChanged: onChanged,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0.r),
            ),
          ),
        ),
        Text(
          AppStrings.rememberMe,
          style: AppTextStyles.font15Regular,
        ),
      ],
    );
  }
}

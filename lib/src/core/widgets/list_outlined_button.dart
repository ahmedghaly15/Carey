import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

class ListOutlinedButton extends StatelessWidget {
  const ListOutlinedButton({
    super.key,
    required this.isActive,
    this.onPressed,
    this.text,
    this.child,
  });

  final bool isActive;
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      isOutlined: !isActive,
      isInfinityWidth: false,
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
      backgroundColor: isActive ? Colors.black : Colors.white,
      borderRadius: 34,
      borderColor: _activeColor,
      onPressed: onPressed,
      child: FittedBox(
        fit: BoxFit.cover,
        child: child ??
            Text(
              text!,
              style: AppTextStyles.font16Regular.copyWith(
                color: _activeColor,
              ),
            ),
      ),
    );
  }

  Color get _activeColor => isActive ? Colors.white : Colors.black;
}

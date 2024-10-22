import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/ok_text_button.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({
    super.key,
    this.contentText,
    this.content,
    this.actions,
    this.contentPadding,
  });

  final String? contentText;
  final Widget? content;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Colors.white,
      shape: AppConstants.dialogShape,
      icon: Image.asset(
        Assets.careyIcon,
        height: context.screenHeight * 0.15,
      ),
      content: content ??
          Text(
            contentText!,
            style: AppTextStyles.font18Regular,
            textAlign: TextAlign.center,
          ),
      contentPadding: contentPadding ??
          EdgeInsets.symmetric(
            vertical: 24.h,
            horizontal: 16.w,
          ),
      actions: actions ?? [const OkTextButton()],
    );
  }
}

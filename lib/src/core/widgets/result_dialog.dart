import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    this.actionsPadding = EdgeInsets.zero,
    this.titleText,
    this.titleWidget,
    this.hasOkButtonInActions = true,
    this.okButtonOnPressed,
  });

  final String? contentText;
  final String? titleText;
  final Widget? titleWidget;
  final Widget? content;
  final bool hasOkButtonInActions;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? actionsPadding;
  final VoidCallback? okButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Colors.white,
      shape: AppConstants.dialogShape,
      icon: SvgPicture.asset(
        Assets.svgsSuccessDialogImage,
      ),
      title: titleWidget ??
          (titleText != null
              ? Text(
                  titleText!,
                  style: AppTextStyles.poppinsFont20SemiBold,
                )
              : null),
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
      actions: hasOkButtonInActions
          ? [
              OkTextButton(
                onPressed: okButtonOnPressed,
              ),
            ]
          : actions,
      actionsPadding: actionsPadding,
    );
  }
}

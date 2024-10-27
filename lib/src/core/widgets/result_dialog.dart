import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/ok_text_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  });

  final String? contentText;
  final String? titleText;
  final Widget? titleWidget;
  final Widget? content;
  final bool hasOkButtonInActions;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? actionsPadding;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Colors.white,
      shape: AppConstants.dialogShape,
      icon: SvgPicture.asset(
        Assets.svgsSuccessDialogImage,
      ),
      title: titleWidget ??
          Text(
            titleText ?? AppStrings.congratulations,
            style: AppTextStyles.poppinsFont20SemiBold,
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
      actions: hasOkButtonInActions ? [const OkTextButton()] : actions,
      actionsPadding: actionsPadding,
    );
  }
}

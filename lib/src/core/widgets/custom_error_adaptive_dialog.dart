import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/ok_text_button.dart';

class CustomErrorAdaptiveDialog extends StatelessWidget {
  const CustomErrorAdaptiveDialog({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Colors.white,
      icon: SvgPicture.asset(
        Assets.svgsSomethingWrong,
        height: context.screenHeight * 0.15,
      ),
      shape: AppConstants.dialogShape,
      content: Text(
        error,
        style: AppTextStyles.font18Regular,
        textAlign: TextAlign.center,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      actions: const <Widget>[OkTextButton()],
      actionsPadding: EdgeInsets.zero,
    );
  }
}

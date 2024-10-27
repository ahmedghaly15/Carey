import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.error,
    this.tryAgainOnPressed,
  });

  final String error;
  final VoidCallback? tryAgainOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgsSomethingWrong),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.h),
          child: Text(
            error,
            style: AppTextStyles.font18Regular,
            textAlign: TextAlign.center,
          ),
        ),
        if (tryAgainOnPressed != null)
          PrimaryButton(
            onPressed: tryAgainOnPressed,
            text: AppStrings.tryAgain,
          ),
      ],
    );
  }
}

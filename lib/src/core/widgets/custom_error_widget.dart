import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/api/api_error_message.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

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
        error == ApiErrorMessage.noInternetConnection
            ? Image.asset(Assets.imagesNoInternet)
            : SvgPicture.asset(
                Assets.svgsSomethingWrong,
                height: context.screenHeight * 0.4,
              ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
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
            margin: EdgeInsets.symmetric(horizontal: 24.w),
          ),
      ],
    );
  }
}

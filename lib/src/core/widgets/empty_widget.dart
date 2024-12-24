import 'package:carey/src/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.imgPath,
    required this.message,
  });

  final String? imgPath;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        spacing: 32.h,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgPath ?? Assets.svgsSomethingWrong,
            height: context.screenHeight * 0.3,
          ),
          Text(
            message,
            style: AppTextStyles.font16Regular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassContinueBlocListener extends StatelessWidget {
  const ResetPassContinueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      margin: AppConstants.screenHorizontalPadding.add(
        EdgeInsets.only(bottom: 16.h),
      ),
      onPressed: () {},
      text: AppStrings.continueWord,
    );
  }
}

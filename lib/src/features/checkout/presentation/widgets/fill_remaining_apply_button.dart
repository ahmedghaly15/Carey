import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

class FillRemainingApplyButton extends StatelessWidget {
  const FillRemainingApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Spacer(),
          PrimaryButton(
            margin: EdgeInsetsDirectional.only(
              start: 31.w,
              end: 31.w,
              bottom: 26.h,
            ),
            text: AppStrings.apply,
            onPressed: () => context.maybePop(),
          ),
        ],
      ),
    );
  }
}

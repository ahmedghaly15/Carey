import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/widgets/primary_button.dart';

class SliverFillRemainingButton extends StatelessWidget {
  const SliverFillRemainingButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final VoidCallback onTap;
  final String text;

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
            text: text,
            onPressed: onTap,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';

class LoadingAdaptiveDialog extends StatelessWidget {
  const LoadingAdaptiveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.3),
      child: AlertDialog.adaptive(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.all(16.h),
        shape: AppConstants.dialogShape,
        content: const FittedBox(child: AnimatedLoadingIndicator()),
      ),
    );
  }
}

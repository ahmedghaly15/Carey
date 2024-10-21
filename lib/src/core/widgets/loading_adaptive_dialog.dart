import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/widgets/custom_loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingAdaptiveDialog extends StatelessWidget {
  const LoadingAdaptiveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.3),
      child: AlertDialog.adaptive(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        content: const CustomLoadingAnimationWidget(),
      ),
    );
  }
}

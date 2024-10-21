import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AnimatedLoadingIndicator extends StatelessWidget {
  const AnimatedLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.discreteCircle(
      color: AppColors.primaryColor,
      size: context.screenHeight * 0.04,
    );
  }
}

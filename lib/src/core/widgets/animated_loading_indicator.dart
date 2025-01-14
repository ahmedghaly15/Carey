import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';

class AnimatedLoadingIndicator extends StatelessWidget {
  const AnimatedLoadingIndicator({
    super.key,
    this.color = AppColors.primaryColor,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.discreteCircle(
      color: color,
      size: context.screenHeight * 0.04,
    );
  }
}

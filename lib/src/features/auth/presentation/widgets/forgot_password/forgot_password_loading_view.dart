import 'package:flutter/material.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';

class ForgotPasswordLoadingView extends StatelessWidget {
  const ForgotPasswordLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(titleText: AppStrings.forgotPassword),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: AnimatedLoadingIndicator()),
        ),
      ],
    );
  }
}

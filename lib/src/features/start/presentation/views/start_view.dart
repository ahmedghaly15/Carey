import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/features/start/presentation/widgets/start_view_body.dart';

@RoutePage()
class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundSecondaryColor,
      body: StartViewBody(),
    );
  }
}

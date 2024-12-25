import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/fade_transition_widget.dart';
import 'package:carey/src/core/widgets/slide_animated_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeTransitionWidget(
          child: Image.asset(
            Assets.imagesWelcomeScreenCar,
            height: context.screenHeight,
            width: context.screenWidth,
            fit: BoxFit.cover,
          ),
        ),
        PositionedDirectional(
          bottom: 50.0.h,
          start: 16.0.w,
          child: SlideAnimatedWidget(
            duration: const Duration(seconds: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.welcomeTo,
                  style: AppTextStyles.font40SemiBoldWhite,
                ),
                Text(
                  AppStrings.appTitle,
                  style: AppTextStyles.font90BoldWhite,
                ),
                Text(
                  AppStrings.welcomeViewDescription,
                  style: AppTextStyles.font15SemiBoldWhite,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/slide_animated_widget.dart';

class SlideAnimatedCareyIcon extends StatelessWidget {
  const SlideAnimatedCareyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h),
      child: SlideAnimatedWidget(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 1500),
        begin: const Offset(-1, 0),
        child: Image.asset(Assets.careyIcon),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/shared_pref_helper.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(Assets.imagesStartScreenCar),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0.w),
                child: FittedBox(
                  child: Text(
                    AppStrings.startViewDescription,
                    style: AppTextStyles.font35Bold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 40.0.w,
                height: 7.0.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(5.0.r),
                ),
              ),
              PrimaryButton(
                text: AppStrings.getStarted,
                margin: EdgeInsetsDirectional.only(
                  start: 18.0.w,
                  end: 18.0.w,
                  bottom: 37.h,
                ),
                onPressed: () => _pushReplacementAuthRoute(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _pushReplacementAuthRoute(BuildContext context) async {
    await SharedPrefHelper.setData(CacheKeys.isStartViewVisited, true);
    context.replaceRoute(const AuthRoute());
  }
}

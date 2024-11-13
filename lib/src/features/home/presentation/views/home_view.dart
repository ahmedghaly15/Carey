import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:carey/src/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPaddingVal.w,
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsetsDirectional.only(top: 24.h),
                sliver: const HomeSliverAppBar(),
              ),
              SliverPadding(
                padding: EdgeInsetsDirectional.only(top: 24.h, bottom: 10.h),
                sliver: SliverToBoxAdapter(
                  child: CustomTextFormField(
                    borderRadius: 15,
                    fillColor: AppColors.grey.withOpacity(0.76),
                    borderColor: AppColors.grey.withOpacity(0.76),
                    prefixIcon: const Icon(Icons.search),
                    hintText: AppStrings.search,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.specialOffers,
                      style: AppTextStyles.font20Bold,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(AppStrings.seeAll),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

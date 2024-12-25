import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/products_sliver_grid_shimmer.dart';
import 'package:carey/src/core/widgets/shimmer_widget.dart';

class HomeShimmerLoading extends StatelessWidget {
  const HomeShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.screenHorizontalPaddingVal.w,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CustomSliverAppBar(
            leading: ShimmerWidget(
              height: 49,
              width: 49,
              shape: BoxShape.circle,
              margin: EdgeInsets.only(top: 16.h),
            ),
            actions: List.generate(
              2,
              (index) => const ShimmerWidget(
                height: 24,
                width: 24,
                shape: BoxShape.circle,
              ),
              growable: false,
            ),
          ),
          const SliverToBoxAdapter(
            child: ShimmerWidget(
              margin: EdgeInsetsDirectional.only(
                top: 25,
                bottom: 15,
              ),
              circularRadiusVal: 15,
              height: 51,
            ),
          ),
          const SliverToBoxAdapter(
            child: ShimmerTextAndSeeAll(),
          ),
          const SliverToBoxAdapter(
            child: ShimmerSpecialOffersContainer(),
          ),
          const ShimmerBrandsSliverGrid(),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15.h),
              child: const ShimmerTextAndSeeAll(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 24.h),
              height: 34.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (_, __) => const ShimmerWidget(
                  height: 34,
                  width: 100,
                  circularRadiusVal: 20,
                ),
                separatorBuilder: (_, __) => MySizedBox.width9,
                itemCount: 12,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 16.h),
            sliver: const ProductsSliverGridShimmer(),
          ),
        ],
      ),
    );
  }
}

class ShimmerBrandsSliverGrid extends StatelessWidget {
  const ShimmerBrandsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 4,
      childAspectRatio: 82 / 89,
      crossAxisSpacing: 8.w,
      children: List.generate(
        8,
        (index) => ShimmerWidget(
          shape: BoxShape.circle,
          height: 60.h,
          width: 60.h,
        ),
      ),
    );
  }
}

class ShimmerSpecialOffersContainer extends StatelessWidget {
  const ShimmerSpecialOffersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.colorD9D9D9,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          4,
          (index) => ShimmerWidget(
            height: 18,
            width: index % 2 == 0
                ? context.screenWidth * 0.65
                : context.screenWidth * 0.55,
            margin: EdgeInsets.only(bottom: index != 6 ? 8.h : 0),
          ),
          growable: false,
        ),
      ),
    );
  }
}

class ShimmerTextAndSeeAll extends StatelessWidget {
  const ShimmerTextAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShimmerWidget(
          height: 24,
          width: 139,
        ),
        ShimmerWidget(
          height: 24,
          width: 68,
        ),
      ],
    );
  }
}

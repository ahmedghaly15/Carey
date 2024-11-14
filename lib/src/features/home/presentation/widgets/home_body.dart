import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/home/presentation/widgets/car_brands_sliver_grid.dart';
import 'package:carey/src/features/home/presentation/widgets/home_custom_search_field.dart';
import 'package:carey/src/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/widgets/special_offers_page_view.dart';
import 'package:carey/src/features/home/presentation/widgets/text_and_see_all.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.screenHorizontalPaddingVal.w,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 24.h),
              sliver: const HomeSliverAppBar(),
            ),
            const SliverToBoxAdapter(
              child: HomeCustomSearchField(),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 16.h),
              sliver: SliverToBoxAdapter(
                child: TextAndSeeAll(
                  text: AppStrings.specialOffers,
                  seeAllOnPressed: () {},
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SpecialOffersPageView(),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(top: 16.h),
              sliver: const CarBrandsSliverGrid(),
            ),
            SliverToBoxAdapter(
              child: TextAndSeeAll(
                text: AppStrings.topDeals,
                seeAllOnPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';
import 'package:carey/src/features/home/presentation/widgets/car_brands_sliver_grid.dart';
import 'package:carey/src/features/home/presentation/widgets/home_custom_search_field.dart';
import 'package:carey/src/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/widgets/special_offer_item.dart';
import 'package:carey/src/features/home/presentation/widgets/text_and_see_all.dart';
import 'package:carey/src/features/home/presentation/widgets/top_deals_brands_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.data,
    required this.specialOffers,
  });

  final HomeResponseData data;
  final FetchSpecialOffersResponse specialOffers;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 24.h,
            horizontal: AppConstants.screenHorizontalPaddingVal.w,
          ),
          sliver: const HomeSliverAppBar(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPaddingVal.w,
          ),
          sliver: const SliverToBoxAdapter(
            child: HomeCustomSearchField(),
          ),
        ),
        SliverToBoxAdapter(
          child: TextAndSeeAll(
            text: AppStrings.specialOffers,
            seeAllOnPressed: () => context.pushRoute(
              SpecialOffersRoute(specialOffers: specialOffers),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPaddingVal.w,
          ),
          sliver: SliverToBoxAdapter(
            child: SpecialOfferItem(specialOffer: specialOffers.data[0]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsDirectional.only(
            top: 16.h,
            start: AppConstants.screenHorizontalPaddingVal.w,
            end: AppConstants.screenHorizontalPaddingVal.w,
          ),
          sliver: CarBrandsSliverGrid(brands: data.brands),
        ),
        SliverToBoxAdapter(
          child: TextAndSeeAll(
            text: AppStrings.topDeals,
            seeAllOnPressed: () => context.pushRoute(
              TopDealsRoute(bestCars: data.bestCars),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: TopDealsBrandsListView(),
        ),
        ProductsSliverGrid(cars: data.bestCars),
      ],
    );
  }
}

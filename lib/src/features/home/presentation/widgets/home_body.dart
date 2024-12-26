import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';
import 'package:carey/src/features/home/presentation/widgets/car_brands_sliver_grid.dart';
import 'package:carey/src/features/home/presentation/widgets/home_custom_search_field.dart';
import 'package:carey/src/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/widgets/no_products_widget.dart';
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
      physics: const BouncingScrollPhysics(),
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
        if (specialOffers.data.isNotEmpty)
          SliverToBoxAdapter(
            child: TextAndSeeAll(
              text: AppStrings.specialOffers,
              seeAllOnPressed: () => context.pushRoute(
                SpecialOffersRoute(specialOffers: specialOffers),
              ),
            ),
          ),
        if (specialOffers.data.isNotEmpty)
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
          sliver: CarBrandsSliverGrid(
            brands: data.brands
                .where((brand) => brand.name != AppStrings.all)
                .toList(),
          ),
        ),
        SliverToBoxAdapter(
          child: TextAndSeeAll(
            text: AppStrings.topDeals,
            seeAllOnPressed: () => context.pushRoute(
              TopDealsRoute(homeData: data),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: TopDealsBrandsListView(
            brands: [
              ...data.brands.where((brand) => brand.name == AppStrings.all),
              ...data.brands.where((brand) => brand.name != AppStrings.all),
            ],
          ),
        ),
        BlocSelector<HomeCubit, HomeState, List<Car>?>(
          selector: (state) => state.bestCars,
          builder: (context, bestCars) => (bestCars ?? data.bestCars).isEmpty
              ? const NoProductsWidget()
              : ProductsSliverGrid(
                  cars: bestCars ?? data.bestCars,
                  itemCount: (bestCars ?? data.bestCars).length > 4
                      ? 4
                      : (bestCars ?? data.bestCars).length,
                ),
        ),
      ],
    );
  }
}

import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/presentation/widgets/top_deals_brands_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';

@RoutePage()
class TopDealsView extends StatelessWidget implements AutoRouteWrapper {
  const TopDealsView({super.key, required this.bestCars});

  final List<Car> bestCars;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>.value(
      value: getIt.get<HomeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.topDeals),
            const SliverToBoxAdapter(
              child: TopDealsBrandsListView(),
            ),
            ProductsSliverGrid(cars: bestCars),
          ],
        ),
      ),
    );
  }
}

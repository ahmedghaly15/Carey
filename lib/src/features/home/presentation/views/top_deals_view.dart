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
  const TopDealsView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>.value(
      value: getIt.get<HomeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleText: AppStrings.topDeals),
            SliverToBoxAdapter(
              child: TopDealsBrandsListView(),
            ),
            ProductsSliverGrid(),
          ],
        ),
      ),
    );
  }
}

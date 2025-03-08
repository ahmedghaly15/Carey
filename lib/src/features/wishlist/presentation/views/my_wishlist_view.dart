import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/wishlist/data/datasource/wishlist_local_datasource.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/fetch_wishlist/fetch_wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/widgets/wishlist_products_sliver_grid_bloc_builder.dart';

@RoutePage()
class MyWishlistView extends StatelessWidget implements AutoRouteWrapper {
  const MyWishlistView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<FetchWishlistCubit>(
      create: (_) => getIt.get<FetchWishlistCubit>()..fetchMyWishlist(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            await WishlistLocalDatasource.deleteCachedWishlist();
            await context.read<FetchWishlistCubit>().fetchMyWishlist();
          },
          child: const CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              CustomSliverAppBar(titleText: AppStrings.myWishlist),
              WishlistProductsSliverGridBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

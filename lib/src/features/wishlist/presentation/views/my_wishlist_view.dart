import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/widgets/wishlist_products_sliver_grid_bloc_builder.dart';

@RoutePage()
class MyWishlistView extends StatelessWidget {
  const MyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async =>
              await context.read<WishlistCubit>().fetchMyWishlist(),
          child: const CustomScrollView(
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/core/widgets/empty_widget.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';
import 'package:carey/src/core/widgets/products_sliver_grid_shimmer.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/fetch_wishlist/fetch_wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/fetch_wishlist/fetch_wishlist_state.dart';

class WishlistProductsSliverGridBlocBuilder extends StatelessWidget {
  const WishlistProductsSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchWishlistCubit, FetchWishlistState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case FetchWishlistStateStatus.fetchWishlistLoading:
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.screenHorizontalPaddingVal.w,
                vertical: 19.h,
              ),
              sliver: const ProductsSliverGridShimmer(),
            );
          case FetchWishlistStateStatus.fetchWishlistSuccess:
            return state.wishlist!.cars.isEmpty
                ? EmptyWishlistView()
                : ProductsSliverGrid(cars: state.wishlist!.cars);
          case FetchWishlistStateStatus.fetchWishlistError:
            return state.wishlist != null
                ? (state.wishlist!.cars.isEmpty
                    ? EmptyWishlistView()
                    : ProductsSliverGrid(cars: state.wishlist!.cars))
                : SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      error: state.error!,
                      tryAgainOnPressed: () =>
                          context.read<FetchWishlistCubit>().fetchMyWishlist(),
                    ),
                  );
          default:
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.screenHorizontalPaddingVal.w,
                vertical: 19.h,
              ),
              sliver: const ProductsSliverGridShimmer(),
            );
        }
      },
    );
  }

  bool _buildWhen(FetchWishlistStateStatus status) {
    return status == FetchWishlistStateStatus.fetchWishlistSuccess ||
        status == FetchWishlistStateStatus.fetchWishlistError ||
        status == FetchWishlistStateStatus.fetchWishlistLoading;
  }
}

class EmptyWishlistView extends StatelessWidget {
  const EmptyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyWidget(
      message: AppStrings.yourWishlistEmpty,
      svgImg: Assets.svgsNoFavoriteIcon,
    );
  }
}

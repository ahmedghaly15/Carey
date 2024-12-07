import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';
import 'package:carey/src/core/widgets/products_sliver_grid_shimmer.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_state.dart';
import 'package:carey/src/features/wishlist/presentation/widgets/empty_wishlist_sliver_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistProductsSliverGridBlocBuilder extends StatelessWidget {
  const WishlistProductsSliverGridBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case WishlistStateStatus.fetchWishlistLoading:
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.screenHorizontalPaddingVal.w,
                vertical: 19.h,
              ),
              sliver: const ProductsSliverGridShimmer(),
            );

          case WishlistStateStatus.fetchWishlistSuccess:
            return state.wishlist!.data.isEmpty
                ? const EmptyWishlistSliverWidget()
                : const ProductsSliverGrid(cars: []);

          case WishlistStateStatus.fetchWishlistError:
            return state.wishlist != null
                ? (state.wishlist!.data.isEmpty
                    ? const EmptyWishlistSliverWidget()
                    : const ProductsSliverGrid(cars: []))
                : SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      error: state.error!,
                      tryAgainOnPressed: () =>
                          context.read<WishlistCubit>().fetchMyWishlist(),
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

  bool _buildWhen(WishlistStateStatus status) {
    return status == WishlistStateStatus.fetchWishlistSuccess ||
        status == WishlistStateStatus.fetchWishlistError ||
        status == WishlistStateStatus.fetchWishlistLoading;
  }
}

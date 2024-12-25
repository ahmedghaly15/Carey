import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/reviewers_sliver_widget.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/shimmer_reviewers_sliver_list.dart';

class ReviewersSliverListBlocBuilder extends StatelessWidget {
  const ReviewersSliverListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductReviewsCubit, ProductReviewsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        switch (state.status) {
          case ProductReviewsStateStatus.fetchRatesLoading:
            return SliverPadding(
              padding: _padding,
              sliver: const ShimmerReviewersSliverList(),
            );
          case ProductReviewsStateStatus.fetchRatesError:
            return state.ratesResponse != null
                ? ReviewersSliverWidget(ratesResponse: state.ratesResponse!)
                : SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      error: state.error!,
                      tryAgainOnPressed: () => context
                          .read<ProductReviewsCubit>()
                          .fetchRates(state.intendedToFetchCarId!),
                    ),
                  );
          case ProductReviewsStateStatus.fetchRatesSuccess:
            return BlocSelector<ProductReviewsCubit, ProductReviewsState,
                FetchRatesResponse?>(
              selector: (state) => state.ratesResponse,
              builder: (context, ratesResponse) => ReviewersSliverWidget(
                ratesResponse: ratesResponse!,
              ),
            );
          default:
            return SliverPadding(
              padding: _padding,
              sliver: const ShimmerReviewersSliverList(),
            );
        }
      },
    );
  }

  bool _buildWhen(ProductReviewsStateStatus status) {
    return status == ProductReviewsStateStatus.fetchRatesSuccess ||
        status == ProductReviewsStateStatus.fetchRatesError ||
        status == ProductReviewsStateStatus.fetchRatesLoading;
  }

  EdgeInsetsGeometry get _padding => EdgeInsetsDirectional.only(
        start: AppConstants.pad19.w,
        end: AppConstants.pad19.w,
        top: 29.h,
      );
}

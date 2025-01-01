import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/horizontal_separated_list_view.dart';
import 'package:carey/src/core/widgets/shimmer_widget.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/rate_item_bloc_selector.dart';

class RatesListViewBlocBuilder extends StatelessWidget {
  const RatesListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductReviewsCubit, ProductReviewsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        if (state.status == ProductReviewsStateStatus.fetchRatesSuccess) {
          return state.ratesResponse!.reviews.isNotEmpty
              ? const RatesListView()
              : const SizedBox.shrink();
        } else if (state.status == ProductReviewsStateStatus.fetchRatesError) {
          return const SizedBox.shrink();
        } else {
          return HorizontalSeparatedListView(
            itemBuilder: (_, __) => const ShimmerWidget(
              height: 34,
              width: 58,
              circularRadiusVal: 34,
            ),
            itemCount: 6,
          );
        }
      },
    );
  }

  bool _buildWhen(ProductReviewsStateStatus status) {
    return status == ProductReviewsStateStatus.fetchRatesSuccess ||
        status == ProductReviewsStateStatus.fetchRatesLoading ||
        status == ProductReviewsStateStatus.fetchRatesError;
  }
}

class RatesListView extends StatelessWidget {
  const RatesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalSeparatedListView(
      itemCount: AppConstants.rates.length,
      itemBuilder: (_, index) => RateItemBlocSelector(
        index: index,
        selector: (state) => state.selectedRateIndex,
        onPressed: () =>
            context.read<ProductReviewsCubit>().updateSelectedRate(index),
      ),
    );
  }
}

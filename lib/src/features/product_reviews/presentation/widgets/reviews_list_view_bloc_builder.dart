import 'package:carey/src/core/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/horizontal_separated_list_view.dart';
import 'package:carey/src/core/widgets/list_outlined_button.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class ReviewsListViewBlocBuilder extends StatelessWidget {
  const ReviewsListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductReviewsCubit, ProductReviewsState>(
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) {
        if (state.status == ProductReviewsStateStatus.fetchRatesSuccess) {
          return state.ratesResponse!.rates.isNotEmpty
              ? const ReviewsListView()
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
        status == ProductReviewsStateStatus.fetchRatesError ||
        status == ProductReviewsStateStatus.fetchRatesLoading;
  }
}

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalSeparatedListView(
      itemCount: AppConstants.rates.length,
      itemBuilder: (_, index) =>
          BlocSelector<ProductReviewsCubit, ProductReviewsState, int>(
        selector: (state) => state.selectedRateIndex,
        builder: (context, selectedRate) {
          final bool isSelected = selectedRate == index;
          return ListOutlinedButton(
            isActive: isSelected,
            onPressed: () =>
                context.read<ProductReviewsCubit>().updateSelectedRate(index),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5.w,
              children: [
                Icon(
                  Icons.star,
                  color: isSelected ? Colors.white : Colors.black,
                  size: 12.h,
                ),
                Text(
                  AppConstants.rates[index],
                  style: AppTextStyles.font16Regular.copyWith(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

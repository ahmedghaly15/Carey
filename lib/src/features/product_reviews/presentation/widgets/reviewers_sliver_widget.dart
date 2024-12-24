import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/empty_widget.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/reviewer_item.dart';

class ReviewersSliverWidget extends StatelessWidget {
  const ReviewersSliverWidget({super.key, required this.ratesResponse});

  final FetchRatesResponse ratesResponse;

  @override
  Widget build(BuildContext context) {
    return ratesResponse.rates.isEmpty
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: EmptyWidget(
              message: AppStrings.noReviewsAvailable,
            ),
          )
        : SliverPadding(
            padding: EdgeInsetsDirectional.only(
              start: AppConstants.pad19.w,
              end: AppConstants.pad19.w,
              top: 29.h,
            ),
            sliver: SliverList.builder(
              itemBuilder: (_, index) => const ReviewerItem(),
              itemCount: ratesResponse.rates.length,
            ),
          );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/functions/get_most_frequent_rate.dart';
import 'package:carey/src/features/product_reviews/data/models/product_reviews_view_params.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/condition_label.dart';

class ProductConditionLabelAndReviews extends StatelessWidget {
  const ProductConditionLabelAndReviews({
    super.key,
    required this.rates,
    required this.carId,
  });

  final List<CarRate>? rates;
  final int carId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ConditionLabel(),
        MySizedBox.width10,
        const Icon(
          Icons.star_half_rounded,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: AppTextStyles.font13Regular,
            // equivalent to Colors.black.withOpacity(0.7)
            foregroundColor: const Color.fromRGBO(0, 0, 0, 0.7),
          ),
          onPressed: () => context.pushRoute(
            ProductReviewsRoute(
              params: ProductReviewsViewParams(
                rateAndReviewsCount: _rateAndReviewsCount,
                carId: carId,
              ),
            ),
          ),
          child: Text(_rateAndReviewsCount),
        ),
      ],
    );
  }

  double get _mostFrequentRate => (rates != null || rates!.isNotEmpty)
      ? getMostFrequentRate([
          ...rates!.map((rateItem) => rateItem.rate),
        ])
      : 0;
  int get _reviewsCount =>
      (rates != null || rates!.isNotEmpty) ? rates!.length : 0;

  String get _rateAndReviewsCount =>
      '$_mostFrequentRate ($_reviewsCount ${_reviewsCount <= 1 ? 'review' : 'reviews'})';
}

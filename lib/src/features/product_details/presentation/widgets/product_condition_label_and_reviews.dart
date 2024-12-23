import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/condition_label.dart';

class ProductConditionLabelAndReviews extends StatelessWidget {
  const ProductConditionLabelAndReviews({super.key});

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
          onPressed: () => context.pushRoute(
            ProductReviewsRoute(review: '4.8 (86 reviews)'),
          ),
          child: Text(
            '4.8 (86 reviews)',
            style: AppTextStyles.font13Regular.copyWith(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
      ],
    );
  }
}

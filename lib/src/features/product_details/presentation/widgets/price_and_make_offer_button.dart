import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

class PriceAndMakeOfferButton extends StatelessWidget {
  const PriceAndMakeOfferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.price,
              style: AppTextStyles.font15Regular.copyWith(
                color: Colors.black.withOpacity(0.65),
              ),
            ),
            Text(
              '\$185.000',
              style: AppTextStyles.font20Regular,
            ),
          ],
        ),
        MySizedBox.width27,
        Expanded(
          child: PrimaryButton(
            onPressed: () => context.pushRoute(const OfferRoute()),
            text: AppStrings.makeAnOffer,
            borderRadius: 20,
          ),
        ),
      ],
    );
  }
}

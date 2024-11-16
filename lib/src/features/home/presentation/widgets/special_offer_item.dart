import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/home/presentation/widgets/custom_dots_indicators.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '20%',
                      style: AppTextStyles.font35Bold,
                    ),
                  ),
                  Text(
                    'Week Deals!',
                    style: AppTextStyles.font20Bold,
                  ),
                  Text(
                    'Get a new car discount.\nOnly valid this week',
                    style: AppTextStyles.font12Bold.copyWith(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.width10,
            Expanded(
              child: Image.asset(
                Assets.imagesCarTest,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        MySizedBox.height16,
        Flexible(child: CustomDotsIndicators(pageIndex: pageIndex)),
      ],
    );
  }
}

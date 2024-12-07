import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/core/widgets/condition_label.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/favorite_icon_button.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class TopDealItem extends StatelessWidget {
  const TopDealItem({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Align(
          alignment: AlignmentDirectional.centerEnd,
          child: FavoriteIconButton(),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () => context.pushRoute(ProductDetailsRoute(car: car)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: CustomCachedNetworkImage(
                imageUrl: car.attachments[0].url,
              ),
            ),
          ),
        ),
        MySizedBox.height12,
        Text(
          car.name,
          style: AppTextStyles.font15Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            RatingBar(
              initialRating: car.rates![0].rate / 5,
              direction: Axis.horizontal,
              itemCount: 1,
              glow: true,
              maxRating: 1,
              minRating: 0,
              allowHalfRating: true,
              ignoreGestures: true,
              itemSize: 16.h,
              ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star_rounded,
                ),
                half: const Icon(
                  Icons.star_half_rounded,
                ),
                empty: const Icon(
                  Icons.star_border_rounded,
                ),
              ),
              onRatingUpdate: (_) {},
            ),
            Text(
              '${car.rates![0].rate}',
              style: AppTextStyles.font10Bold.copyWith(
                color: AppColors.primaryColor.withOpacity(0.7),
              ),
            ),
            Container(
              width: 2.0.w,
              height: 14.0.h,
              margin: EdgeInsets.symmetric(horizontal: 6.w),
              color: Colors.black,
            ),
            ConditionLabel(conditionLabel: car.status!),
          ],
        ),
        Text(
          '\$${formatIntWithCommas(int.parse(car.price))}',
          style: AppTextStyles.font15Bold,
        ),
      ],
    );
  }
}

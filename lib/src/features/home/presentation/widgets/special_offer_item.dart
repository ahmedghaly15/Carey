import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';

class SpecialOfferItem extends StatelessWidget {
  const SpecialOfferItem({
    super.key,
    required this.specialOffer,
  });

  final SpecialOffer specialOffer;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 154,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          start: 20.w,
          end: 16.w,
          top: 20.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '${specialOffer.discount}%',
                      style: AppTextStyles.font35Bold,
                    ),
                  ),
                  Text(
                    '${specialOffer.type}!',
                    style: AppTextStyles.font20Bold,
                  ),
                  Text(
                    specialOffer.description,
                    style: AppTextStyles.font12Bold.copyWith(
                      color: Colors.black.withOpacity(0.7),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            MySizedBox.width10,
            Expanded(
              child: CustomCachedNetworkImage(
                imageUrl: specialOffer.car.attachments[0].url,
                imageBuilder: (_, image) => Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.r),
                    bottom: Radius.circular(40.r),
                  ),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.contain,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

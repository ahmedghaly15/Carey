import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/favorite_review_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewerItem extends StatelessWidget {
  const ReviewerItem({super.key, required this.review});

  final RateResponseItem review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 7.w,
            children: [
              CustomCachedNetworkImage(
                imageUrl: review.user.picture!,
                imageBuilder: (_, image) => CircleAvatar(
                  radius: 22.r,
                  backgroundImage: image,
                ),
              ),
              Text(
                review.user.fullName!,
                style: AppTextStyles.font16Regular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Container(
                margin: EdgeInsetsDirectional.only(end: 6.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(34.r),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5.w,
                  children: [
                    Icon(
                      Icons.star,
                      size: 12.h,
                    ),
                    Text(
                      '${review.rate}',
                      style: AppTextStyles.font16Regular,
                    ),
                  ],
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size.zero,
                  iconSize: 24.h,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(Assets.svgsExtraBoldMoreIcon),
              ),
            ],
          ),
          MySizedBox.height9,
          Text(
            review.comment,
            style: AppTextStyles.font13Regular.copyWith(
              color: Colors.black.withAlpha(204),
            ),
            textAlign: TextAlign.justify,
          ),
          MySizedBox.height13,
          Row(
            children: [
              const FavoriteReviewIconButton(),
              MySizedBox.width5,
              Text(
                '830',
                style: AppTextStyles.font13Regular.copyWith(
                  color: Colors.black.withAlpha(204),
                ),
              ),
              MySizedBox.width16,
              Text(
                '6 days ago',
                style: AppTextStyles.font13Regular.copyWith(
                  color: Colors.black.withAlpha(204),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.pad19.w,
        ),
        itemBuilder: (_, index) =>
            BlocSelector<ProductReviewsCubit, ProductReviewsState, int>(
          selector: (state) => state.selectedReviews,
          builder: (context, selectedReviews) {
            final bool isSelected = selectedReviews == index;
            return PrimaryButton(
              onPressed: () => context
                  .read<ProductReviewsCubit>()
                  .updateSelectedReviews(index),
              height: 34.h,
              width: 58.w,
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
              borderRadius: 34,
              isOutlined: isSelected ? false : true,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: isSelected ? Colors.white : Colors.black,
                    size: 12.h,
                  ),
                  MySizedBox.width5,
                  Text(
                    '${index + 1}',
                    style: AppTextStyles.font16Regular.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        separatorBuilder: (_, __) => MySizedBox.width9,
        itemCount: 12,
      ),
    );
  }
}

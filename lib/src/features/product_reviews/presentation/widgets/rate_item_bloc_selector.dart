import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/list_outlined_button.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class RateItemBlocSelector extends StatelessWidget {
  const RateItemBlocSelector({
    super.key,
    required this.index,
    required this.onPressed,
    required this.selector,
    this.rates = AppConstants.rates,
  });

  final int index;
  final VoidCallback onPressed;
  final int Function(ProductReviewsState) selector;
  final List<String> rates;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductReviewsCubit, ProductReviewsState, int>(
      selector: selector,
      builder: (context, selectedRate) {
        final bool isSelected = selectedRate == index;
        return ListOutlinedButton(
          isActive: isSelected,
          onPressed: onPressed,
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
                rates[index],
                style: AppTextStyles.font16Regular.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

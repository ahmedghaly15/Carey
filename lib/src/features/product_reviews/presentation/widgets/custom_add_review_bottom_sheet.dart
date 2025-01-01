import 'package:carey/src/core/helpers/text_form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:carey/src/core/widgets/horizontal_separated_list_view.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/add_review_button_bloc_consumer.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/rate_item_bloc_selector.dart';

class CustomAddReviewBottomSheet extends StatelessWidget {
  const CustomAddReviewBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.5,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HorizontalSeparatedListView(
              itemCount: AppConstants.rates.sublist(1).length,
              itemBuilder: (_, index) => RateItemBlocSelector(
                rates: AppConstants.rates.sublist(1),
                index: index,
                selector: (state) => state.bottomSheetSelectedRateIndex,
                onPressed: () => context
                    .read<ProductReviewsCubit>()
                    .updateBottomSheetSelectedRate(index),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    child: Form(
                      key: context.read<ProductReviewsCubit>().formKey,
                      child: CustomTextFormField(
                        controller: context
                            .read<ProductReviewsCubit>()
                            .reviewController,
                        textCapitalization: TextCapitalization.sentences,
                        fillColor: Colors.white,
                        hintText: AppStrings.writeYourComment,
                        hintStyle: AppTextStyles.font16Regular.copyWith(
                          color: AppColors.primaryColor.withAlpha(64),
                        ),
                        style: AppTextStyles.font16Regular,
                        maxLines: null,
                        expands: true,
                        textAlignVertical: TextAlignVertical.top,
                        contentPadding:
                            AppConstants.textFormFieldHorizontalPadding.add(
                          EdgeInsets.symmetric(vertical: 16.h),
                        ),
                        validate: (value) => TextFormValidator.validateField(
                          value,
                          fieldName: AppStrings.review,
                        ),
                      ),
                    ),
                  ),
                ),
                const AddReviewButtonBlocConsumer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

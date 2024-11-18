import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';

class OffersSliverGrid extends StatelessWidget {
  const OffersSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 96 / 34,
        crossAxisSpacing: 14.w,
        mainAxisSpacing: 17.h,
      ),
      itemCount: 9,
      itemBuilder: (_, index) {
        return BlocSelector<MakeOfferCubit, MakeOfferState, int>(
          selector: (state) => state.selectedOfferIndex,
          builder: (context, selectedOfferIndex) {
            final bool isSelected = selectedOfferIndex == index;
            final int offer = ((index * 10000) + 100000);
            return PrimaryButton(
              onPressed: () =>
                  context.read<MakeOfferCubit>().updateSelectedOfferIndex(
                        index: index,
                        offer: offer,
                      ),
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              text: '\$${formatIntWithCommas(offer)}',
              textStyle: AppTextStyles.font15Medium.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
              isOutlined: isSelected ? false : true,
              isInfinityWidth: false,
            );
          },
        );
      },
    );
  }
}

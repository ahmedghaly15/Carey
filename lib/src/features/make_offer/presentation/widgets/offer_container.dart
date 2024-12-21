import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 34.w),
      padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Align(
        alignment: Alignment.center,
        child: BlocSelector<MakeOfferCubit, MakeOfferState, int>(
          selector: (state) => state.selectedOffer,
          builder: (context, selectedOffer) => Text(
            '\$${formatIntWithCommas(selectedOffer)}',
            style: AppTextStyles.font27SemiBold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

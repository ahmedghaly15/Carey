import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/widgets/special_offer_item.dart';

class SpecialOffersPageView extends StatelessWidget {
  const SpecialOffersPageView({super.key});

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
        child: PageView.builder(
          controller: context.read<HomeCubit>().specialOffersController,
          itemBuilder: (_, index) => const SpecialOfferItem(),
          itemCount: 5,
          onPageChanged: (index) =>
              context.read<HomeCubit>().changeCurrentSpecialOffer(index),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';

class TopDealsBrandsListView extends StatelessWidget {
  const TopDealsBrandsListView({super.key, required this.brands});

  final List<CarBrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: ListView.separated(
        padding: EdgeInsetsDirectional.only(
          start: AppConstants.screenHorizontalPaddingVal.w,
          end: AppConstants.screenHorizontalPaddingVal.w,
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: brands.length,
        itemBuilder: (_, index) => BlocSelector<HomeCubit, HomeState, int>(
          selector: (state) => state.currentSelectedTopDealBrand,
          builder: (context, currentSelectedTopDealBrand) {
            final bool isSelected = currentSelectedTopDealBrand == index;
            return PrimaryButton(
              isInfinityWidth: false,
              padding: EdgeInsets.symmetric(
                vertical: 6.h,
                horizontal: 9.w,
              ),
              isOutlined: isSelected ? false : true,
              textStyle: AppTextStyles.font16Bold.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
              onPressed: () {
                context.read<HomeCubit>().updateSelectedTopDealBrand(index);
                context
                    .read<HomeCubit>()
                    .filterBestCarsByBrand(brands[index].name);
              },
              text: brands[index].name,
            );
          },
        ),
        separatorBuilder: (_, __) => MySizedBox.width9,
      ),
    );
  }
}

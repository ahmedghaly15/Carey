import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';
import 'package:carey/src/features/home/presentation/widgets/car_brand.dart';

class CarBrandsSliverGrid extends StatelessWidget {
  const CarBrandsSliverGrid({super.key, required this.brands});

  final List<CarBrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, bool>(
      selector: (state) => state.showAllBrands,
      builder: (context, showAllBrands) {
        final displayedBrands =
            showAllBrands ? brands : brands.take(7).toList();
        return SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 82 / 89,
          ),
          itemCount: showAllBrands ? brands.length : displayedBrands.length + 1,
          itemBuilder: (_, index) {
            if (_isMoreButtonShown(showAllBrands, index, displayedBrands)) {
              // "More" button as the 8th item || the last item
              return GestureDetector(
                onTap: () => context.read<HomeCubit>().switchShowAllBrands(),
                child: CarBrand(
                  isSvgImg: true,
                  svgImgName: showAllBrands ? AppStrings.less : AppStrings.more,
                  svgImgPath: showAllBrands
                      ? Assets.svgsCollapseIcon
                      : Assets.svgsMoreIcon,
                ),
              );
            }
            return CarBrand(brand: displayedBrands[index]);
          },
        );
      },
    );
  }

  bool _isMoreButtonShown(
    bool showAllBrands,
    int index,
    List<CarBrandModel> displayedBrands,
  ) {
    return (!showAllBrands && index == 7) ||
        (showAllBrands && index == displayedBrands.length - 1);
  }
}

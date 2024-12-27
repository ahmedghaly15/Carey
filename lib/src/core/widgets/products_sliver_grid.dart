import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/car_product_item.dart';

class ProductsSliverGrid extends StatelessWidget {
  const ProductsSliverGrid({
    super.key,
    required this.cars,
    this.itemCount,
  });

  final List<Car> cars;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.screenHorizontalPaddingVal.w,
        vertical: 19.h,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: AppConstants.carProductAspectRatio,
        ),
        itemCount: itemCount ?? cars.length,
        itemBuilder: (_, index) => CarProductItem(car: cars[index]),
      ),
    );
  }
}

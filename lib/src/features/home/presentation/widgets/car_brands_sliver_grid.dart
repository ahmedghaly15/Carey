import 'package:flutter/material.dart';

import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/presentation/widgets/car_brand.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarBrandsSliverGrid extends StatelessWidget {
  const CarBrandsSliverGrid({super.key, required this.brands});

  final List<CarBrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8.h,
        childAspectRatio: 82 / 89,
      ),
      itemCount: 8,
      itemBuilder: (_, index) => CarBrand(brand: brands[index]),
    );
  }
}

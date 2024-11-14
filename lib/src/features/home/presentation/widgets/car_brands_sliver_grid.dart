import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/home/presentation/widgets/car_brand.dart';

class CarBrandsSliverGrid extends StatelessWidget {
  const CarBrandsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 6.w,
        mainAxisSpacing: 11.h,
      ),
      itemCount: 8,
      itemBuilder: (_, index) => const CarBrand(),
    );
  }
}

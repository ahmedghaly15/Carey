import 'package:flutter/material.dart';

import 'package:carey/src/features/home/presentation/widgets/car_brand.dart';

class CarBrandsSliverGrid extends StatelessWidget {
  const CarBrandsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 82 / 89,
      ),
      itemCount: 8,
      itemBuilder: (_, index) => const CarBrand(),
    );
  }
}

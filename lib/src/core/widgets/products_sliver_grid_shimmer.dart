import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/shimmer_widget.dart';

class ProductsSliverGridShimmer extends StatelessWidget {
  const ProductsSliverGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: AppConstants.carProductAspectRatio,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 21.h,
      ),
      itemCount: 12,
      itemBuilder: (_, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShimmerWidget(
            height: 113,
            circularRadiusVal: 40,
          ),
          MySizedBox.height12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              3,
              (index) => ShimmerWidget(
                height: 18,
                width: index % 2 == 0 ? 117 : 72,
                margin: EdgeInsets.only(bottom: index != 2 ? 4.h : 0),
              ),
              growable: false,
            ),
          ),
        ],
      ),
    );
  }
}

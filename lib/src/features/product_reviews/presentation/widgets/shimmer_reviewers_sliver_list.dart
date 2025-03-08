import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/shimmer_widget.dart';

class ShimmerReviewersSliverList extends StatelessWidget {
  const ShimmerReviewersSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (_, index) => const ShimmerReviewItem(),
      itemCount: 8,
    );
  }
}

class ShimmerReviewItem extends StatelessWidget {
  const ShimmerReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 7.w,
            children: const [
              ShimmerWidget(
                shape: BoxShape.circle,
                height: 44,
                width: 44,
              ),
              ShimmerWidget(
                height: 19,
                width: 100,
              ),
              Spacer(),
              ShimmerWidget(
                height: 34,
                width: 58,
                circularRadiusVal: 20,
              ),
            ],
          ),
          MySizedBox.height9,
          ...List.generate(
            4,
            (index) => ShimmerWidget(
              margin: index != 3 ? EdgeInsets.only(bottom: 8.h) : null,
              height: 12,
              width: index.isEven ? double.infinity : context.screenWidth * 0.6,
            ),
            growable: false,
          ),
          MySizedBox.height13,
          Row(
            spacing: 15.w,
            children: List.generate(
              2,
              (_) => const ShimmerWidget(
                height: 12,
                width: 74,
              ),
              growable: false,
            ),
          ),
        ],
      ),
    );
  }
}

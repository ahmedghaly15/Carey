import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/home/presentation/widgets/top_deal_item.dart';

class TopDealsSliverGrid extends StatelessWidget {
  const TopDealsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 21.h,
        childAspectRatio: 167 / 194,
      ),
      itemCount: 10,
      itemBuilder: (_, index) => const TopDealItem(),
    );
  }
}
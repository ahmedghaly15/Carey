import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';

class HorizontalSeparatedListView extends StatelessWidget {
  const HorizontalSeparatedListView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.padding,
    this.separatorWidget,
    this.height = 34,
  });

  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsetsGeometry? padding;
  final Widget? separatorWidget;
  final int itemCount;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.separated(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 17.w),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: itemBuilder,
        separatorBuilder: ((_, __) => separatorWidget ?? MySizedBox.width9),
        itemCount: itemCount,
      ),
    );
  }
}

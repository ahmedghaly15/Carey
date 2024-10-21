import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  final double? height, width;

  const CustomSizedBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
    );
  }
}

class MySizedBox {
  static const CustomSizedBox width10 = CustomSizedBox(width: 10);
  static const CustomSizedBox width7 = CustomSizedBox(width: 7);
  static const CustomSizedBox height17 = CustomSizedBox(height: 17);
}

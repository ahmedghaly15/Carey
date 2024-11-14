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
  static const CustomSizedBox width16 = CustomSizedBox(width: 16);
  static const CustomSizedBox width27 = CustomSizedBox(width: 27);
  static const CustomSizedBox width7 = CustomSizedBox(width: 7);
  static const CustomSizedBox width9 = CustomSizedBox(width: 9);
  static const CustomSizedBox height40 = CustomSizedBox(height: 40);
  static const CustomSizedBox height13 = CustomSizedBox(height: 13);
  static const CustomSizedBox height12 = CustomSizedBox(height: 12);
  static const CustomSizedBox height53 = CustomSizedBox(height: 53);
  static const CustomSizedBox height33 = CustomSizedBox(height: 33);
  static const CustomSizedBox height17 = CustomSizedBox(height: 17);
  static const CustomSizedBox height16 = CustomSizedBox(height: 16);
  static const CustomSizedBox height19 = CustomSizedBox(height: 19);
  static const CustomSizedBox height32 = CustomSizedBox(height: 32);
  static const CustomSizedBox height8 = CustomSizedBox(height: 8);
}

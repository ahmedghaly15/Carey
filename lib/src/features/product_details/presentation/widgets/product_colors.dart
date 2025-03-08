import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductColors extends StatefulWidget {
  const ProductColors({super.key});

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13.h, bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          AppConstants.productColors.length,
          (index) => GestureDetector(
            onTap: () {
              if (selectedColorIndex != index) {
                setState(() => selectedColorIndex = index);
              }
            },
            child: Container(
              height: 29.h,
              width: 29.h,
              padding: EdgeInsets.all(6.h),
              margin: EdgeInsetsDirectional.only(
                end:
                    index != AppConstants.productColors.length - 1 ? 18.w : 0.w,
              ),
              decoration: BoxDecoration(
                color: AppConstants.productColors[index],
                shape: BoxShape.circle,
              ),
              child: selectedColorIndex == index
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16.h,
                    )
                  : null,
            ),
          ),
          growable: false,
        ),
      ),
    );
  }
}

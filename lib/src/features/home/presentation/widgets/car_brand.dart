import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarBrand extends StatelessWidget {
  const CarBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14.h),
          decoration: const BoxDecoration(
            color: AppColors.colorD9D9D9,
            shape: BoxShape.circle,
          ),
          child: Image.asset(Assets.imagesCarBrandTest),
        ),
        MySizedBox.height8,
        Text(
          'Mercedes',
          style: AppTextStyles.font16Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

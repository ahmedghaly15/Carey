import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';

class CarBrand extends StatelessWidget {
  const CarBrand({super.key, required this.brand});

  final CarBrandModel brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.h,
          width: 60.h,
          padding: EdgeInsets.all(14.h),
          decoration: const BoxDecoration(
            color: AppColors.colorD9D9D9,
            shape: BoxShape.circle,
          ),
          child: CustomCachedNetworkImage(
            imageUrl: brand.image ??
                'https://carey-production.up.railway.app/uploads/brands/1732304931045-467666725-image.png',
          ),
        ),
        MySizedBox.height8,
        Text(
          brand.name,
          style: AppTextStyles.font16Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

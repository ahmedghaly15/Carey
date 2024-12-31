import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';

class CarBrand extends StatelessWidget {
  const CarBrand({
    super.key,
    this.brand,
    this.isSvgImg = false,
    this.svgImgPath,
    this.svgImgName,
  });

  final CarBrandModel? brand;
  final bool isSvgImg;
  final String? svgImgPath, svgImgName;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        Container(
          height: 60.h,
          width: 60.h,
          padding: EdgeInsets.all(14.h),
          decoration: const BoxDecoration(
            color: AppColors.colorD9D9D9,
            shape: BoxShape.circle,
          ),
          child: isSvgImg
              ? SvgPicture.asset(svgImgPath!)
              : CustomCachedNetworkImage(
                  imageUrl: brand!.image ??
                      'https://carey-production.up.railway.app/uploads/brands/1732304931045-467666725-image.png',
                  fit: BoxFit.contain,
                ),
        ),
        Text(
          isSvgImg ? svgImgName! : brand!.name,
          style: AppTextStyles.font16Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class GalleryPhotosListView extends StatelessWidget {
  const GalleryPhotosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsetsDirectional.only(
          start: AppConstants.productDetailsStartPadVal.w,
          end: AppConstants.pad19.w,
        ),
        itemBuilder: (_, index) =>
            Image.asset(Assets.imagesGalleryPhotoTestpng),
        separatorBuilder: (_, __) => MySizedBox.width10,
        itemCount: 10,
      ),
    );
  }
}

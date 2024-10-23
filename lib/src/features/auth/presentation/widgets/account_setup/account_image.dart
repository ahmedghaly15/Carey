import 'package:carey/src/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          height: 125.h,
          width: 127.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            Assets.svgsDefaultUserImage,
            fit: BoxFit.cover,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.svgsEditImageIcon),
        ),
      ],
    );
  }
}

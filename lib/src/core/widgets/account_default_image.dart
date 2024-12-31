import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/utils/app_assets.dart';

class AccountDefaultImage extends StatelessWidget {
  const AccountDefaultImage({super.key, this.radius = 60});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundColor: Colors.transparent,
      child: SvgPicture.asset(
        Assets.svgsDefaultUserImage,
        fit: BoxFit.cover,
      ),
    );
  }
}

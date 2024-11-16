import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/utils/app_assets.dart';

class ArrowBackIconButton extends StatelessWidget {
  const ArrowBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.maybePop(),
      icon: SvgPicture.asset(
        Assets.svgsArrowBackIcon,
      ),
    );
  }
}

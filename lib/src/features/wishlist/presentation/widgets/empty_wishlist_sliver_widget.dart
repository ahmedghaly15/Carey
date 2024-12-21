import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class EmptyWishlistSliverWidget extends StatelessWidget {
  const EmptyWishlistSliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.svgsNoFavoriteIcon),
          MySizedBox.height32,
          Text(
            AppStrings.yourWishlistEmpty,
            style: AppTextStyles.font18Medium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

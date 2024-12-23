import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/account_default_image.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      leading: currentUserData?.user.picture != null
          ? CustomCachedNetworkImage(
              imageUrl: currentUserData!.user.picture!,
              imageBuilder: (_, image) => CircleAvatar(
                radius: 25.r,
                backgroundImage: image,
              ),
            )
          : const AccountDefaultImage(radius: 25),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge.count(
            count: 9999,
            textColor: Colors.white,
            backgroundColor: AppColors.primaryColor,
            child: const Icon(Icons.notifications_outlined),
          ),
        ),
        IconButton(
          onPressed: () => context.pushRoute(const MyWishlistRoute()),
          icon: const Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}

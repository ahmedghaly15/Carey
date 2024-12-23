import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/custom_cached_network_image.dart';
import 'package:carey/src/core/widgets/favorite_icon_button_bloc_listener.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewersSliverList extends StatelessWidget {
  const ReviewersSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (_, index) => const ReviewerItem(),
      itemCount: 18,
    );
  }
}

class ReviewerItem extends StatelessWidget {
  const ReviewerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomCachedNetworkImage(
                imageUrl:
                    'https://img.freepik.com/free-photo/young-bearded-man-with-white-t-shirt_273609-7190.jpg?t=st=1731853385~exp=1731856985~hmac=d89e474b5b17f704e8e5d303f7c7aa3d3fe706868fb823c616410360ed00247f&w=1060',
                imageBuilder: (_, image) => CircleAvatar(
                  radius: 22.r,
                  backgroundImage: image,
                ),
              ),
              MySizedBox.width7,
              Text(
                'Darlene Robertson',
                style: AppTextStyles.font16Regular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          MySizedBox.height9,
          Text(
            'Elit exercitation sint quis commodo nulla adipisicing eu officia et tempor amet. Occaecat exercitation ipsum nulla eu velit magna labore et ipsum excepteur mollit. Elit fugiat commodo nulla incididunt velit est laborum enim. Excepteur enim amet irure aliqua. Aliqua labore nisi enim sint proident nisi Lorem non adipisicing. Magna in consectetur et duis sint magna est Lorem Lorem ea sit laboris laborum duis. Aliqua consequat irure consectetur deserunt dolore dolor in nostrud.',
            style: AppTextStyles.font13Regular.copyWith(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          MySizedBox.height13,
          Row(
            children: [
              //  FavoriteIconButton(padding: EdgeInsets.zero, carId: car.id,
              //     wishlistLength: car.wishlists?.length ?? 0,),
              MySizedBox.width5,
              Text(
                '830',
                style: AppTextStyles.font13Regular.copyWith(
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              MySizedBox.width16,
              Text(
                '6 days ago',
                style: AppTextStyles.font13Regular.copyWith(
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

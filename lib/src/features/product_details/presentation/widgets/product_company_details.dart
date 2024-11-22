import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class ProductCompanyDetails extends StatelessWidget {
  const ProductCompanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesBmwIcon),
        MySizedBox.width16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'BMW Store',
                  style: AppTextStyles.font18Medium,
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
              ],
            ),
            Text(
              'Official Account of BMW',
              style: AppTextStyles.poppinsFont12Regular,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.svgsChatIcon),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.phone_outlined),
        ),
      ],
    );
  }
}

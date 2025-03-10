import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/features/checkout/data/models/shipping_method.dart';
import 'package:carey/src/features/checkout/presentation/widgets/selectable_circular_indicator.dart';
import 'package:carey/src/core/widgets/decorated_list_tile.dart';

class ShippingMethodWidget extends StatelessWidget {
  const ShippingMethodWidget({
    super.key,
    required this.shippingMethod,
    required this.isSelected,
    this.onTap,
  });

  final ShippingMethod shippingMethod;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedListTile(
      onTap: onTap,
      circularLeading: SvgPicture.asset(shippingMethod.img),
      title: Text(
        shippingMethod.name,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      subTitle: Row(
        spacing: 8.w,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            shippingMethod.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            '\$${shippingMethod.price}',
            style: AppTextStyles.poppinsFont15SemiBold.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
      trailing: SelectableCircularIndicator(isSelected: isSelected),
    );
  }
}

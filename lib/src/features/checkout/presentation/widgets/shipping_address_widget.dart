import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/condition_label.dart';
import 'package:carey/src/features/checkout/data/models/shipping_address.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item_widget.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({
    super.key,
    required this.shippingAddress,
    this.trailing,
    this.onTap,
  });

  final ShippingAddress shippingAddress;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ShippingItemWidget(
      onTap: onTap,
      leading: const Icon(Icons.location_on, color: Colors.white),
      title:
          (shippingAddress.title == 'Home' && shippingAddress.hasDefaultBadge)
              ? Row(
                  spacing: 10.w,
                  children: [
                    _buildTitleTextWidget(),
                    ConditionLabel(
                      conditionLabel: AppStrings.defaultWord,
                      conditionTextStyle:
                          AppTextStyles.poppinsFont13Medium.copyWith(
                        color: Colors.black.withAlpha(192),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
                    ),
                  ],
                )
              : _buildTitleTextWidget(),
      subTitle: Text(
        shippingAddress.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: trailing,
    );
  }

  Text _buildTitleTextWidget() {
    return Text(
      shippingAddress.title,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}

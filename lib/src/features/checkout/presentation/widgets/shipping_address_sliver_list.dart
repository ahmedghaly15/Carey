import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/checkout/data/models/shipping_item.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item_bloc_selector.dart';

class ShippingAddressSliverList extends StatelessWidget {
  const ShippingAddressSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _shippingAddresses.length,
      itemBuilder: (_, index) => FadeIn(
        delay: Duration(milliseconds: index * 200),
        child: Container(
          margin: EdgeInsets.only(
            bottom: index != _shippingAddresses.length - 1 ? 8.h : 0,
          ),
          child: ShippingItemBlocSelector(
            shippingItem: _shippingAddresses[index],
          ),
        ),
      ),
    );
  }
}

List<ShippingItem> _shippingAddresses = const [
  ShippingItem(
    title: 'Home',
    subTitleText: '53322 Sunbtook park,PC 5678',
    hasDefaultBadge: true,
  ),
  ShippingItem(
    title: 'Work',
    subTitleText: '53322 Sunbtook park,PC 5678',
  ),
  ShippingItem(
    title: 'Apartment',
    subTitleText: '53322 Sunbtook park,PC 5678',
  ),
  ShippingItem(
    title: 'Other',
    subTitleText: '53322 Sunbtook park,PC 5678',
  ),
];

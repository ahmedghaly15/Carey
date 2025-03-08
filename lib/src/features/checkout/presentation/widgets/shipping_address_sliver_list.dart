import 'package:carey/src/features/checkout/data/models/shipping_item.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddressSliverList extends StatelessWidget {
  const ShippingAddressSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _shippingAddresses.length,
      itemBuilder: (_, index) => Container(
        margin: EdgeInsets.only(
          bottom: index != _shippingAddresses.length - 1 ? 8.h : 0,
        ),
        child: ShippingItemWidget(
          onTap: () {},
          shippingItem: _shippingAddresses[index],
          trailing: Container(
            padding: EdgeInsets.all(3.h),
            height: 30.h,
            width: 30.h,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 5.w,
              ),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<ShippingItem> _shippingAddresses = const [
  ShippingItem(
    title: 'Home',
    subTitle: '53322 Sunbtook park,PC 5678',
    hasDefaultBadge: true,
  ),
  ShippingItem(
    title: 'Work',
    subTitle: '53322 Sunbtook park,PC 5678',
  ),
  ShippingItem(
    title: 'Apartment',
    subTitle: '53322 Sunbtook park,PC 5678',
  ),
  ShippingItem(
    title: 'Other',
    subTitle: '53322 Sunbtook park,PC 5678',
  ),
];

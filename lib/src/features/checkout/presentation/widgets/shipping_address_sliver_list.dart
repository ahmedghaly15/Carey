import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/checkout/data/models/shipping_item.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item_widget.dart';

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
          child: BlocSelector<CheckoutCubit, CheckoutState, bool>(
            selector: (state) {
              return state.selectedShippingAddress == _shippingAddresses[index];
            },
            builder: (context, isSelected) => ShippingItemWidget(
              onTap: () {
                context
                    .read<CheckoutCubit>()
                    .updateSelectedShippingAddress(_shippingAddresses[index]);
              },
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
                  duration: const Duration(milliseconds: 450),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
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

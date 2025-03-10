import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/checkout/data/models/shipping_address.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:carey/src/features/checkout/presentation/widgets/selectable_circular_indicator.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_address_widget.dart';

class ShippingAddressSliverList extends StatelessWidget {
  const ShippingAddressSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _shippingAddress.length,
      itemBuilder: (_, index) => FadeIn(
        delay: Duration(milliseconds: index * 200),
        child: Container(
          margin: EdgeInsets.only(
            bottom: index != _shippingAddress.length - 1 ? 8.h : 0,
          ),
          child: ShippingAddressWidget(
            shippingAddress: _shippingAddress[index],
            onTap: () {
              context
                  .read<CheckoutCubit>()
                  .updateShippingAddress(_shippingAddress[index]);
            },
            trailing: BlocSelector<CheckoutCubit, CheckoutState, bool>(
              selector: (state) {
                return state.selectedShippingAddress == _shippingAddress[index];
              },
              builder: (context, isSelected) =>
                  SelectableCircularIndicator(isSelected: isSelected),
            ),
          ),
        ),
      ),
    );
  }
}

List<ShippingAddress> _shippingAddress = const [
  ShippingAddress(
    title: 'Home',
    description: '53322 Sunbtook park,PC 5678',
    hasDefaultBadge: true,
  ),
  ShippingAddress(
    title: 'Work',
    description: '53322 Sunbtook park,PC 5678',
  ),
  ShippingAddress(
    title: 'Apartment',
    description: '53322 Sunbtook park,PC 5678',
  ),
  ShippingAddress(
    title: 'Other',
    description: '53322 Sunbtook park,PC 5678',
  ),
];

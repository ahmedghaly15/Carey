import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/checkout/data/models/shipping_item.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item_widget.dart';

class ShippingItemBlocSelector extends StatelessWidget {
  const ShippingItemBlocSelector({
    super.key,
    required this.shippingItem,
  });

  final ShippingItem shippingItem;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CheckoutCubit, CheckoutState, bool>(
      selector: (state) {
        return state.selectedShippingAddress == shippingItem;
      },
      builder: (context, isSelected) => ShippingItemWidget(
        onTap: () {
          context
              .read<CheckoutCubit>()
              .updateSelectedShippingAddress(shippingItem);
        },
        shippingItem: shippingItem,
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
    );
  }
}

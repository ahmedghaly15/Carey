import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/checkout/data/models/shipping_method.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:carey/src/features/checkout/presentation/widgets/fill_remaining_apply_button.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_method_widget.dart';

@RoutePage()
class ShippingMethodView extends StatelessWidget implements AutoRouteWrapper {
  const ShippingMethodView({super.key, required this.checkoutCubit});

  final CheckoutCubit checkoutCubit;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: checkoutCubit,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            const CustomSliverAppBar(titleText: AppStrings.shippingMethod),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              sliver: const ShippingMethodsSliverList(),
            ),
            const FillRemainingApplyButton(),
          ],
        ),
      ),
    );
  }
}

class ShippingMethodsSliverList extends StatelessWidget {
  const ShippingMethodsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _shippingMethods.length,
      itemBuilder: (_, index) => FadeIn(
        delay: Duration(milliseconds: index * 200),
        child: Container(
          margin: EdgeInsets.only(
            bottom: index != _shippingMethods.length - 1 ? 8.h : 0,
          ),
          child: BlocSelector<CheckoutCubit, CheckoutState, bool>(
            selector: (state) {
              return state.selectedShippingMethod == _shippingMethods[index];
            },
            builder: (context, isSelected) => ShippingMethodWidget(
              isSelected: isSelected,
              shippingMethod: _shippingMethods[index],
              onTap: () {
                context
                    .read<CheckoutCubit>()
                    .updateShippingMethod(_shippingMethods[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}

List<ShippingMethod> _shippingMethods = const [
  ShippingMethod(
    name: 'Truck',
    description: 'Est. Arrival, Dec 20-24',
    price: 250,
    img: Assets.svgsTruck,
  ),
  ShippingMethod(
    name: 'Train',
    description: 'Est. Arrival, Dec 22-21',
    price: 300,
    img: Assets.svgsTrain,
  ),
  ShippingMethod(
    name: 'Container Ship',
    description: 'Est. Arrival, Dec 22-20',
    price: 350,
    img: Assets.svgsContainerShip,
  ),
  ShippingMethod(
    name: 'Plane',
    description: 'Est. Arrival, Dec 23-19',
    price: 450,
    img: Assets.svgsPlane,
  ),
];

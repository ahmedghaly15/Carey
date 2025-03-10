import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/widgets/sliver_fill_remaining_button.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_methods_sliver_list.dart';

@RoutePage()
class ShippingMethodsView extends StatelessWidget implements AutoRouteWrapper {
  const ShippingMethodsView({super.key, required this.checkoutCubit});

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
            SliverFillRemainingButton(
              text: AppStrings.continueWord,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

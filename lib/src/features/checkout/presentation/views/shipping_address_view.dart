import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/widgets/sliver_fill_remaining_button.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_address_sliver_list.dart';

@RoutePage()
class ShippingAddressView extends StatelessWidget implements AutoRouteWrapper {
  const ShippingAddressView({super.key, required this.checkoutCubit});

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
            const CustomSliverAppBar(titleText: AppStrings.shippingAddress),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              sliver: const ShippingAddressSliverList(),
            ),
            SliverToBoxAdapter(
              child: PrimaryButton(
                margin: EdgeInsetsDirectional.only(
                  start: 31.w,
                  end: 31.w,
                  top: 26.h,
                ),
                backgroundColor: AppColors.colorD9D9D9,
                text: AppStrings.addNewAddress,
                textColor: Colors.black,
                onPressed: () {},
              ),
            ),
            SliverFillRemainingButton(
              text: AppStrings.apply,
              onTap: () => context.maybePop(),
            ),
          ],
        ),
      ),
    );
  }
}

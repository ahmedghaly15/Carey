import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/checkout/data/models/shipping_address.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:carey/src/features/checkout/presentation/widgets/checkout_details_container.dart';
import 'package:carey/src/features/checkout/presentation/widgets/checkout_order_item.dart';
import 'package:carey/src/features/checkout/presentation/widgets/choose_shipping_type_container.dart';
import 'package:carey/src/features/checkout/presentation/widgets/section_title.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_address_widget.dart';

@RoutePage()
class CheckoutView extends StatelessWidget implements AutoRouteWrapper {
  const CheckoutView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (_) => getIt.get<CheckoutCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            const CustomSliverAppBar(titleText: AppStrings.checkout),
            const SliverToBoxAdapter(
              child: SectionTitle(title: AppStrings.shippingAddress),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 29.w),
                child:
                    BlocSelector<CheckoutCubit, CheckoutState, ShippingAddress>(
                  selector: (state) {
                    return state.selectedShippingAddress ??
                        const ShippingAddress(
                          title: 'Home',
                          description: '53322 Sunbtook park,PC 5678',
                          hasDefaultBadge: true,
                        );
                  },
                  builder: (context, selectedShippingAddress) =>
                      ShippingAddressWidget(
                    shippingAddress: selectedShippingAddress,
                    trailing: IconButton(
                      onPressed: () => context.pushRoute(
                        ShippingAddressRoute(
                          checkoutCubit: context.read<CheckoutCubit>(),
                        ),
                      ),
                      icon: SvgPicture.asset(Assets.svgsPenIcon),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SectionTitle(
                title: AppStrings.order,
                margin: EdgeInsetsDirectional.only(
                  start: _horizontalPadding,
                  top: 23.h,
                  bottom: 9.h,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: CheckoutOrderItem()),
            SliverToBoxAdapter(
              child: SectionTitle(
                title: AppStrings.chooseShipping,
                margin: EdgeInsetsDirectional.only(
                  start: _horizontalPadding,
                  top: 23.h,
                  bottom: 9.h,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: ChooseShippingTypeContainer()),
            const SliverToBoxAdapter(child: CheckoutDetailsContainer()),
            SliverToBoxAdapter(
              child: PrimaryButton(
                onPressed: () => context.pushRoute(const PaymentProcessRoute()),
                margin: EdgeInsetsDirectional.only(
                  start: _horizontalPadding,
                  end: _horizontalPadding,
                  bottom: 16.h,
                ),
                text: AppStrings.continueToPayment,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double get _horizontalPadding => 29.w;
}

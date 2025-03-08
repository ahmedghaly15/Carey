import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/checkout/presentation/widgets/checkout_details_container.dart';
import 'package:carey/src/features/checkout/presentation/widgets/checkout_order_item.dart';
import 'package:carey/src/features/checkout/presentation/widgets/choose_shipping_type_container.dart';
import 'package:carey/src/features/checkout/presentation/widgets/section_title.dart';
import 'package:carey/src/features/checkout/presentation/widgets/shipping_item.dart';

@RoutePage()
class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

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
              child: ShippingItem(
                title: 'Home',
                subTitle: '53322 Sunbtook park,PC 5678',
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.svgsPenIcon),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SectionTitle(
                title: AppStrings.order,
                margin: EdgeInsetsDirectional.only(
                  start: 29.w,
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
                  start: 29.w,
                  top: 23.h,
                  bottom: 9.h,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: ChooseShippingTypeContainer()),
            const SliverToBoxAdapter(child: CheckoutDetailsContainer()),
            SliverToBoxAdapter(
              child: PrimaryButton(
                onPressed: () {},
                margin: EdgeInsetsDirectional.only(
                  start: 29.w,
                  end: 29.w,
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
}

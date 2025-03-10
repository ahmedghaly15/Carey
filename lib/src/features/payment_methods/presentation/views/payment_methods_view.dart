import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/checkout/presentation/widgets/sliver_fill_remaining_button.dart';
import 'package:carey/src/features/payment_methods/presentation/cubit/payment_methods_cubit.dart';
import 'package:carey/src/features/payment_methods/presentation/widgets/payment_methods_sliver_list.dart';

@RoutePage()
class PaymentMethodsView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentMethodsView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentMethodsCubit>(
      create: (_) => getIt.get<PaymentMethodsCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.paymentMethods),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  AppStrings.selectThePaymentMethod,
                  style: AppTextStyles.poppinsFont13Medium,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 16.h),
              sliver: const PaymentMethodsSliverList(),
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

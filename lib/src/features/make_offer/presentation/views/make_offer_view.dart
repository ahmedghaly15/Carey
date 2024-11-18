import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offer_container.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offers_sliver_grid.dart';

@RoutePage()
class MakeOfferView extends StatelessWidget implements AutoRouteWrapper {
  const MakeOfferView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MakeOfferCubit>.value(
      value: getIt.get<MakeOfferCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.makeAnOffer),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.enterYourOfferAmount,
                  style: AppTextStyles.font16Regular,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: OfferContainer()),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              sliver: const OffersSliverGrid(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  PrimaryButton(
                    onPressed: () {},
                    text: AppStrings.sendOffer,
                    margin: EdgeInsets.symmetric(
                      vertical: 34.h,
                      horizontal: 34.w,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

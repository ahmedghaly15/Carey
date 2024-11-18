import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum OfferStatus { accepted, rejected }

@RoutePage()
class OfferStatusView extends StatelessWidget {
  final OfferStatus offerStatus;
  final int offer;

  const OfferStatusView({
    super.key,
    required this.offerStatus,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.yourOffer),
            SliverToBoxAdapter(
              child: Image.asset(
                switch (offerStatus) {
                  OfferStatus.accepted => Assets.imagesOfferAccepted,
                  OfferStatus.rejected => Assets.imagesOfferRejected,
                },
                height: 194.h,
                width: 168.w,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 34.w,
                ),
                child: Text(
                  switch (offerStatus) {
                    OfferStatus.accepted => AppStrings.offerAccepted,
                    OfferStatus.rejected => AppStrings.offerRejected,
                  },
                  style: AppTextStyles.font25SemiBold,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  switch (offerStatus) {
                    OfferStatus.accepted =>
                      '${AppStrings.offerAcceptedDescription} \$${formatIntWithCommas(offer)}',
                    OfferStatus.rejected => AppStrings.offerRejectedDescription,
                  },
                  style: AppTextStyles.poppinsFont16Regular.copyWith(
                    color: Colors.black.withOpacity(0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 34.h,
                  horizontal: 34.w,
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    PrimaryButton(
                      onPressed: () => _offerStatusIsAccepted
                          ? _proceedToCheckout()
                          : _makeOfferAgain(context),
                      text: _offerStatusIsAccepted
                          ? AppStrings.proceedToCheckout
                          : AppStrings.makeOfferAgain,
                      margin: EdgeInsets.only(bottom: 16.h),
                    ),
                    if (!_offerStatusIsAccepted)
                      PrimaryButton(
                        onPressed: () => context.router.pushAndPopUntil(
                          const LayoutRoute(),
                          predicate: (route) =>
                              route.settings.name == OfferRoute.name,
                        ),
                        backgroundColor: AppColors.colorD9D9D9,
                        text: AppStrings.backToHome,
                        textColor: Colors.black,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _makeOfferAgain(BuildContext context) => context.maybePop();

  void _proceedToCheckout() {}

  bool get _offerStatusIsAccepted => offerStatus == OfferStatus.accepted;
}

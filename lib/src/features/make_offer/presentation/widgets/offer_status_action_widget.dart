import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferStatusActionWidget extends StatelessWidget {
  final OfferStatus offerStatus;

  const OfferStatusActionWidget({super.key, required this.offerStatus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 34.h,
        horizontal: 34.w,
      ),
      child: Column(
        children: [
          const Spacer(),
          PrimaryButton(
            onPressed: () => _offerStatusIsAccepted
                ? context.pushRoute(const CheckoutProcessRoute())
                : context.maybePop(),
            text: _offerStatusIsAccepted
                ? AppStrings.proceedToCheckout
                : AppStrings.makeOfferAgain,
            margin: EdgeInsets.only(bottom: 16.h),
          ),
          if (!_offerStatusIsAccepted)
            PrimaryButton(
              onPressed: () => context.router.pushAndPopUntil(
                const LayoutRoute(),
                predicate: (route) => route.settings.name == OfferRoute.name,
              ),
              backgroundColor: AppColors.colorD9D9D9,
              text: AppStrings.backToHome,
              textColor: Colors.black,
            ),
        ],
      ),
    );
  }

  bool get _offerStatusIsAccepted => offerStatus == OfferStatus.accepted;
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offer_status_action_widget.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offer_status_description.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offer_status_image.dart';
import 'package:carey/src/features/make_offer/presentation/widgets/offer_status_message.dart';

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
              child: OfferStatusImage(offerStatus: offerStatus),
            ),
            SliverToBoxAdapter(
              child: OfferStatusMessage(offerStatus: offerStatus),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              sliver: SliverToBoxAdapter(
                child: OfferStatusDescription(
                  offerStatus: offerStatus,
                  offer: offer,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: OfferStatusActionWidget(offerStatus: offerStatus),
            ),
          ],
        ),
      ),
    );
  }
}

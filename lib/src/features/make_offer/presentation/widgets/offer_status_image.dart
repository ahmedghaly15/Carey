import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';

class OfferStatusImage extends StatelessWidget {
  const OfferStatusImage({
    super.key,
    required this.offerStatus,
  });

  final OfferStatus offerStatus;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      switch (offerStatus) {
        OfferStatus.accepted => Assets.imagesOfferAccepted,
        OfferStatus.rejected => Assets.imagesOfferRejected,
      },
      height: 194.h,
      width: 168.w,
    );
  }
}

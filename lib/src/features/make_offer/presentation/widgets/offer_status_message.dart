import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';

class OfferStatusMessage extends StatelessWidget {
  const OfferStatusMessage({
    super.key,
    required this.offerStatus,
  });

  final OfferStatus offerStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
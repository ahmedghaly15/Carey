import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';

class OfferStatusDescription extends StatelessWidget {
  const OfferStatusDescription({
    super.key,
    required this.offerStatus,
    required this.offer,
  });

  final OfferStatus offerStatus;
  final int offer;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (offerStatus) {
        OfferStatus.accepted =>
          '${AppStrings.offerAcceptedDescription} \$${formatIntWithCommas(offer)}',
        OfferStatus.rejected => AppStrings.offerRejectedDescription,
      },
      style: AppTextStyles.poppinsFont16Regular.copyWith(
        color: Colors.black.withAlpha(204),
      ),
      textAlign: TextAlign.center,
    );
  }
}

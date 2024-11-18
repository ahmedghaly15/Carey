import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';

class SendOfferButtonBlocSelector extends StatelessWidget {
  const SendOfferButtonBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MakeOfferCubit, MakeOfferState, int>(
      selector: (state) => state.selectedOffer,
      builder: (context, selectedOffer) => PrimaryButton(
        onPressed: selectedOffer == 0
            ? null
            : () => context.pushRoute(
                  OfferStatusRoute(
                    offerStatus: OfferStatus.rejected,
                    offer: selectedOffer,
                  ),
                ),
        text: AppStrings.sendOffer,
        margin: EdgeInsets.symmetric(
          vertical: 34.h,
          horizontal: 34.w,
        ),
      ),
    );
  }
}

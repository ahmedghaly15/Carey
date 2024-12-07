import 'package:auto_route/auto_route.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/widgets/special_offer_item.dart';

@RoutePage()
class SpecialOffersView extends StatelessWidget {
  const SpecialOffersView({super.key, required this.specialOffers});

  final FetchSpecialOffersResponse specialOffers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.specialOffers),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: AppConstants.screenHorizontalPaddingVal.w,
              ),
              sliver: SliverList.builder(
                itemCount: specialOffers.data.length,
                itemBuilder: (_, index) => Container(
                  margin: EdgeInsets.only(bottom: 19.h),
                  child: SpecialOfferItem(
                    specialOffer: specialOffers.data[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

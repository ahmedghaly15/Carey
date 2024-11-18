import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/format_int_with_commas.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 34.w),
                padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: BlocSelector<MakeOfferCubit, MakeOfferState, int>(
                    selector: (state) => state.selectedOffer,
                    builder: (context, selectedOffer) => Text(
                      '\$${formatIntWithCommas(selectedOffer)}',
                      style: AppTextStyles.font27SemiBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 96 / 34,
                  crossAxisSpacing: 14.w,
                  mainAxisSpacing: 17.h,
                ),
                itemCount: 9,
                itemBuilder: (_, index) {
                  return BlocSelector<MakeOfferCubit, MakeOfferState, int>(
                    selector: (state) => state.selectedOfferIndex,
                    builder: (context, selectedOfferIndex) {
                      final bool isSelected = selectedOfferIndex == index;
                      final int offer = ((index * 10000) + 100000);
                      return PrimaryButton(
                        onPressed: () => context
                            .read<MakeOfferCubit>()
                            .updateSelectedOfferIndex(
                              index: index,
                              offer: offer,
                            ),
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        text: '\$${formatIntWithCommas(offer)}',
                        textStyle: AppTextStyles.font15Medium.copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                        isOutlined: isSelected ? false : true,
                        isInfinityWidth: false,
                      );
                    },
                  );
                },
              ),
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

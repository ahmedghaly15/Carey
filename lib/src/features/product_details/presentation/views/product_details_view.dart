import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/favorite_icon_button_bloc_listener.dart';
import 'package:carey/src/features/product_details/presentation/widgets/gallery_photos_list_view.dart';
import 'package:carey/src/features/product_details/presentation/widgets/price_and_make_offer_button.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_colors.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_company_details.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_condition_label_and_reviews.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryScaffoldBackgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              backgroundColor: AppColors.secondaryScaffoldBackgroundColor,
              actions: [
                FavoriteIconButtonBlocListener(
                  carId: car.id,
                  wishlistLength: car.wishlists?.length ?? 0,
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Image.asset(Assets.imagesCarTest, fit: BoxFit.cover),
            ),
            const SliverToBoxAdapter(child: ProductColors()),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'BMW M4 Series',
                  style: AppTextStyles.font30SemiBold,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
              ),
              sliver: SliverToBoxAdapter(
                child: ProductConditionLabelAndReviews(
                  rates: car.rates,
                  carId: car.id,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.pad19.w,
                top: 10.h,
                bottom: 10.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Consectetur qui elit reprehenderit dolore sit aliquip mollit eu proident exercitation amet ullamco. Tempor qui magna qui nulla duis sit in duis enim dolore proident sint. Amet cupidatat duis non incididunt.',
                  style: AppTextStyles.poppinsFont12Regular.copyWith(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  AppStrings.galleryPhotos,
                  style: AppTextStyles.font20SemiBoldWhite.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: GalleryPhotosListView()),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.pad19.w,
                top: 16.h,
                bottom: 13.h,
              ),
              sliver: const SliverToBoxAdapter(child: ProductCompanyDetails()),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                top: 8.h,
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.pad19.w,
                bottom: 13.h,
              ),
              sliver: const SliverToBoxAdapter(
                child: PriceAndMakeOfferButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

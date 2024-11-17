import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/favorite_icon_button.dart';
import 'package:carey/src/features/product_details/presentation/widgets/gallery_photos_list_view.dart';
import 'package:carey/src/features/product_details/presentation/widgets/price_and_make_offer_button.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_colors.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_company_details.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_condition_label_and_reviews.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryScaffoldBackgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(
              backgroundColor: AppColors.secondaryScaffoldBackgroundColor,
              actions: [FavoriteIconButton()],
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
              sliver: const SliverToBoxAdapter(
                child: ProductConditionLabelAndReviews(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.productDetailsEndPadVal.w,
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
                end: AppConstants.productDetailsEndPadVal.w,
                top: 16.h,
                bottom: 13.h,
              ),
              sliver: const SliverToBoxAdapter(child: ProductCompanyDetails()),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                top: 8.h,
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.productDetailsEndPadVal.w,
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

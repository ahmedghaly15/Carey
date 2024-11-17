import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/favorite_icon_button.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/core/widgets/product_condition_label.dart';
import 'package:carey/src/features/product_details/presentation/widgets/product_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              child: Image.asset(
                Assets.imagesCarTest,
                fit: BoxFit.cover,
              ),
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
                child: Row(
                  children: [
                    const ProductConditionLabel(),
                    MySizedBox.width10,
                    const Icon(
                      Icons.star_half_rounded,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '4.8 (86 reviews)',
                        style: AppTextStyles.font13Regular.copyWith(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
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
            SliverToBoxAdapter(
              child: SizedBox(
                height: 54.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsetsDirectional.only(
                    start: AppConstants.productDetailsStartPadVal.w,
                    end: AppConstants.productDetailsEndPadVal.w,
                  ),
                  itemBuilder: (_, index) =>
                      Image.asset(Assets.imagesGalleryPhotoTestpng),
                  separatorBuilder: (_, __) => MySizedBox.width10,
                  itemCount: 10,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.productDetailsEndPadVal.w,
                top: 16.h,
                bottom: 13.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Image.asset(Assets.imagesBmwIcon),
                    MySizedBox.width16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'BMW Store',
                              style: AppTextStyles.font18Medium,
                            ),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Text(
                          'Official Account of BMW',
                          style: AppTextStyles.poppinsFont12Regular,
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svgsChatIcon),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                top: 8.h,
                start: AppConstants.productDetailsStartPadVal.w,
                end: AppConstants.productDetailsEndPadVal.w,
                bottom: 13.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.price,
                          style: AppTextStyles.font15Regular.copyWith(
                            color: Colors.black.withOpacity(0.65),
                          ),
                        ),
                        Text(
                          '\$185.000',
                          style: AppTextStyles.font20Regular,
                        ),
                      ],
                    ),
                    MySizedBox.width27,
                    Expanded(
                      child: PrimaryButton(
                        onPressed: () {},
                        text: AppStrings.makeAnOffer,
                        borderRadius: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

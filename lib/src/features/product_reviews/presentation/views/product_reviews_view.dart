import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/reviewers_sliver_list.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/reviews_list_view.dart';

@RoutePage()
class ProductReviewsView extends StatelessWidget implements AutoRouteWrapper {
  const ProductReviewsView({super.key, required this.review});

  final String review;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductReviewsCubit>(
      create: (_) => getIt.get<ProductReviewsCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CustomSliverAppBar(titleText: review),
            const SliverToBoxAdapter(child: ReviewsListView()),
            SliverPadding(
              padding: EdgeInsetsDirectional.only(
                start: AppConstants.pad19.w,
                end: AppConstants.pad19.w,
                top: 29.h,
              ),
              sliver: const ReviewersSliverList(),
            ),
          ],
        ),
      ),
    );
  }
}

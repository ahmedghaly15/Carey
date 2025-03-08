import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/product_reviews/data/datasources/product_reviews_local_datasource.dart';
import 'package:carey/src/features/product_reviews/data/models/product_reviews_view_params.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/add_review_fab.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/rates_list_view_bloc_builder.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/reviewers_sliver_list_bloc_builder.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/update_selected_rate_bloc_listener.dart';

@RoutePage()
class ProductReviewsView extends StatelessWidget implements AutoRouteWrapper {
  const ProductReviewsView({super.key, required this.params});

  final ProductReviewsViewParams params;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductReviewsCubit>(
      create: (_) => getIt.get<ProductReviewsCubit>()..fetchRates(params.carId),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            await ProductReviewsLocalDatasource.deleteCachedRates(params.carId);
            await context.read<ProductReviewsCubit>().fetchRates(params.carId);
          },
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              CustomSliverAppBar(titleText: params.rateAndReviewsCount),
              const SliverToBoxAdapter(
                child: RatesListViewBlocBuilder(),
              ),
              const SliverToBoxAdapter(
                child: UpdateSelectedRateBlocListener(),
              ),
              const ReviewersSliverListBlocBuilder(),
            ],
          ),
        ),
      ),
      floatingActionButton: const AddReviewFAB(),
    );
  }
}

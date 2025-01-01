import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class AddReviewButtonBlocConsumer extends StatelessWidget {
  const AddReviewButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductReviewsCubit, ProductReviewsState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => PrimaryButton.withAnimatedLoadingOrTextChild(
        isLoading: state.status == ProductReviewsStateStatus.addReviewLoading,
        onPressed: () => _addReview(context),
        margin: EdgeInsets.only(
          bottom: 16.h,
          left: 16.w,
          right: 16.w,
        ),
        text: AppStrings.add,
      ),
    );
  }

  void _addReview(BuildContext context) {
    if (context.read<ProductReviewsCubit>().bottomSheetSelectedRate != -1) {
      final carId =
          context.router.current.argsAs<ProductReviewsRouteArgs>().params.carId;
      context.read<ProductReviewsCubit>().validateFormAndAddReview(carId);
    } else {
      context.showErrorDialog(AppStrings.rateMustBeChosen);
    }
  }

  void _listener(ProductReviewsState state, BuildContext context) {
    switch (state.status) {
      case ProductReviewsStateStatus.addReviewLoading:
        context.unfocusKeyboard();
        break;
      case ProductReviewsStateStatus.addReviewSuccess:
        context.popTop();
        Future.delayed(
          Duration(milliseconds: 500),
          () => context.showToast(AppStrings.reviewHasBeenSubmitted),
        );
        break;
      case ProductReviewsStateStatus.addReviewError:
        context.showErrorDialog(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(ProductReviewsStateStatus status) {
    return status == ProductReviewsStateStatus.addReviewSuccess ||
        status == ProductReviewsStateStatus.addReviewError ||
        status == ProductReviewsStateStatus.addReviewLoading;
  }
}

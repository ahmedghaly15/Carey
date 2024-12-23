import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateSelectedRateBlocListener extends StatelessWidget {
  const UpdateSelectedRateBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductReviewsCubit, ProductReviewsState>(
      listenWhen: (_, current) =>
          current.status == ProductReviewsStateStatus.updateSelectedRate,
      listener: (context, state) {
        if (state.status == ProductReviewsStateStatus.updateSelectedRate) {
          if (state.selectedRate != 0) {
            context.read<ProductReviewsCubit>().updateRatesResponse(
                  int.parse(AppConstants.rates[state.selectedRate]),
                );
          } else {
            context.read<ProductReviewsCubit>().fetchRates(
                  state.ratesResponse!.rates[0].car.id,
                );
          }
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class UpdateSelectedRateBlocListener extends StatelessWidget {
  const UpdateSelectedRateBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductReviewsCubit, ProductReviewsState>(
      listenWhen: (_, current) =>
          current.status == ProductReviewsStateStatus.updateSelectedRate,
      listener: (context, state) {
        context.read<ProductReviewsCubit>().updateSelectedRateReviews();
      },
      child: const SizedBox.shrink(),
    );
  }
}

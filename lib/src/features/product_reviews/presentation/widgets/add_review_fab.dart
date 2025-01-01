import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/product_reviews/presentation/widgets/custom_add_review_bottom_sheet.dart';

class AddReviewFAB extends StatelessWidget {
  const AddReviewFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // final args = context.router.current.argsAs<ProductReviewsRouteArgs>();
        // print('=======>>>>> CAR ID${args.params.carId}');
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (_) => BlocProvider.value(
            value: context.read<ProductReviewsCubit>(),
            child: CustomAddReviewBottomSheet(),
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

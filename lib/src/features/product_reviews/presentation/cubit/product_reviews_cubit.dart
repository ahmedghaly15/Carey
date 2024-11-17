import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewsCubit extends Cubit<ProductReviewsState> {
  ProductReviewsCubit() : super(ProductReviewsState.initial());

  void updateSelectedReviews(int index) {
    if (state.selectedReviews != index) {
      emit(state.copyWith(
        status: ProductReviewsStateStatus.updateSelectedReviews,
        selectedReviews: index,
      ));
    }
  }
}

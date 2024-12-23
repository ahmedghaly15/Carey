import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:carey/src/features/product_reviews/data/repositories/product_reviews_repo.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewsCubit extends Cubit<ProductReviewsState> {
  final ProductReviewsRepo _repo;

  ProductReviewsCubit(this._repo) : super(ProductReviewsState.initial());

  void updateSelectedReviews(int index) {
    if (state.selectedReviews != index) {
      emit(state.copyWith(
        status: ProductReviewsStateStatus.updateSelectedReviews,
        selectedReviews: index,
      ));
    }
  }

  void addReview(AddReviewRequestParams params) async {
    emit(state.copyWith(status: ProductReviewsStateStatus.addReviewLoading));
    final result = await _repo.addReview(params);
    result.when(
      success: (_) => emit(
          state.copyWith(status: ProductReviewsStateStatus.addReviewSuccess)),
      failure: (failure) => emit(state.copyWith(
        status: ProductReviewsStateStatus.addReviewError,
        error: failure.error[0],
      )),
    );
  }
}

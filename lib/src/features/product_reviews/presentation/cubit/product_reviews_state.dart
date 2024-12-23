import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reviews_state.freezed.dart';

enum ProductReviewsStateStatus {
  initial,
  updateSelectedReviews,
  addReviewLoading,
  addReviewSuccess,
  addReviewError,
  deleteReviewLoading,
  deleteReviewSuccess,
  deleteReviewError,
}

@freezed
class ProductReviewsState with _$ProductReviewsState {
  const factory ProductReviewsState({
    required ProductReviewsStateStatus status,
    @Default(0) int selectedReviews,
    String? error,
  }) = _ProductReviewsState;

  factory ProductReviewsState.initial() => const ProductReviewsState(
        status: ProductReviewsStateStatus.initial,
      );
}

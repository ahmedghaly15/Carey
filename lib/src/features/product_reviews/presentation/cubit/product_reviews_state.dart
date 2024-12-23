import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';

part 'product_reviews_state.freezed.dart';

enum ProductReviewsStateStatus {
  initial,
  updateSelectedRate,
  addReviewLoading,
  addReviewSuccess,
  addReviewError,
  deleteReviewLoading,
  deleteReviewSuccess,
  deleteReviewError,
  fetchRatesLoading,
  fetchRatesSuccess,
  fetchRatesError,
}

@freezed
class ProductReviewsState with _$ProductReviewsState {
  const factory ProductReviewsState({
    required ProductReviewsStateStatus status,
    @Default(0) int selectedRate,
    FetchRatesResponse? ratesResponse,
    String? error,
  }) = _ProductReviewsState;

  factory ProductReviewsState.initial() => const ProductReviewsState(
        status: ProductReviewsStateStatus.initial,
      );
}

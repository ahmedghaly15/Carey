import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_request_params.dart';
import 'package:carey/src/features/product_reviews/data/repositories/product_reviews_repo.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class ProductReviewsCubit extends Cubit<ProductReviewsState> {
  final ProductReviewsRepo _repo;

  ProductReviewsCubit(this._repo) : super(ProductReviewsState.initial());

  final CancelToken _cancelToken = CancelToken();

  void updateSelectedRate(int index) {
    if (state.selectedRate != index) {
      emit(state.copyWith(
        status: ProductReviewsStateStatus.updateSelectedRate,
        selectedRate: index,
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

  void deleteReview(int rateId) async {
    emit(state.copyWith(
      status: ProductReviewsStateStatus.deleteReviewLoading,
    ));
    final result = await _repo.deleteReview(rateId, _cancelToken);
    result.when(
      success: (_) => emit(state.copyWith(
        status: ProductReviewsStateStatus.deleteReviewSuccess,
      )),
      failure: (failure) => emit(state.copyWith(
        status: ProductReviewsStateStatus.deleteReviewError,
        error: failure.error[0],
      )),
    );
  }

  Future<void> fetchRates(int carId) async {
    emit(state.copyWith(status: ProductReviewsStateStatus.fetchRatesLoading));
    final result = await _repo.fetchRates(
      FetchRatesRequestParams(carId: carId),
      _cancelToken,
    );
    result.when(
      success: (ratesResponse) => emit(state.copyWith(
        status: ProductReviewsStateStatus.fetchRatesSuccess,
        ratesResponse: ratesResponse,
      )),
      failure: (failure) => emit(state.copyWith(
        status: ProductReviewsStateStatus.fetchRatesError,
        error: failure.error[0],
      )),
    );
  }

  void updateRatesResponse(int rate) {
    emit(
      state.copyWith(
        ratesResponse: state.ratesResponse!.copyWith(
          rates: state.ratesResponse!.rates
              .where((rateResponseItem) => rateResponseItem.rate == rate)
              .toList(),
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}

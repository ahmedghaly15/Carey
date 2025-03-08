import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_request_params.dart';
import 'package:carey/src/features/product_reviews/data/repositories/product_reviews_repo.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_state.dart';

class ProductReviewsCubit extends Cubit<ProductReviewsState> {
  final ProductReviewsRepo _repo;

  ProductReviewsCubit(this._repo) : super(ProductReviewsState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController reviewController;
  late final GlobalKey<FormState> formKey;
  final CancelToken _cancelToken = CancelToken();

  void _initFormAttributes() {
    reviewController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  void updateSelectedRate(int index) {
    if (state.selectedRateIndex != index) {
      emit(state.copyWith(
        status: ProductReviewsStateStatus.updateSelectedRate,
        selectedRateIndex: index,
      ));
    }
  }

  void _addReview(int carId) async {
    emit(state.copyWith(status: ProductReviewsStateStatus.addReviewLoading));
    final result = await _repo.addReview(AddReviewRequestParams(
      rate: int.parse(
        AppConstants.rates.sublist(1)[state.bottomSheetSelectedRateIndex],
      ),
      carId: carId,
      comment: reviewController.text.trim(),
    ));
    result.when(
      success: (_) {
        reviewController.clear();
        emit(
          state.copyWith(status: ProductReviewsStateStatus.addReviewSuccess),
        );
      },
      failure: (failure) => emit(state.copyWith(
        status: ProductReviewsStateStatus.addReviewError,
        error: failure.error[0],
      )),
    );
  }

  void validateFormAndAddReview(int carId) {
    if (formKey.currentState!.validate()) {
      _addReview(carId);
    }
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
    emit(state.copyWith(
      status: ProductReviewsStateStatus.fetchRatesLoading,
      intendedToFetchCarId: carId,
    ));
    final result = await _repo.fetchRates(
      FetchRatesRequestParams(carId: carId),
      _cancelToken,
    );
    result.when(
      success: (ratesResponse) => emit(state.copyWith(
        status: ProductReviewsStateStatus.fetchRatesSuccess,
        ratesResponse: ratesResponse,
        allRatesResponse: ratesResponse,
      )),
      failure: (failure) => emit(state.copyWith(
        status: ProductReviewsStateStatus.fetchRatesError,
        error: failure.error[0],
      )),
    );
  }

  void updateSelectedRateReviews() {
    emit(
      state.copyWith(
        ratesResponse: state.selectedRateIndex != 0
            ? state.ratesResponse!.copyWith(
                reviews: state.allRatesResponse!.reviews
                    .where((rateResponseItem) =>
                        rateResponseItem.rate ==
                        int.parse(AppConstants.rates[state.selectedRateIndex]))
                    .toList(),
              )
            : state.allRatesResponse,
      ),
    );
  }

  int get bottomSheetSelectedRate => state.bottomSheetSelectedRateIndex;
  void updateBottomSheetSelectedRate(int index) {
    if (state.bottomSheetSelectedRateIndex != index) {
      emit(state.copyWith(
        status: ProductReviewsStateStatus.updateBottomSheetSelectedRate,
        bottomSheetSelectedRateIndex: index,
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    reviewController.dispose();
    return super.close();
  }
}

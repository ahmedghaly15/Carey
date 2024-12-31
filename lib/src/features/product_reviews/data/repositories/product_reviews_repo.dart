import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/product_reviews/data/api/product_reviews_api_service.dart';
import 'package:carey/src/features/product_reviews/data/datasources/product_reviews_local_datasource.dart';
import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_request_params.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';

class ProductReviewsRepo {
  final ProductReviewsApiService _apiService;
  final ProductReviewsLocalDatasource _localDatasource;

  ProductReviewsRepo(this._apiService, this._localDatasource);

  Future<ApiResult<void>> addReview(AddReviewRequestParams params) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.addReview(params),
    );
  }

  Future<ApiResult<void>> deleteReview(
    int rateId, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.deleteReview(rateId, cancelToken),
    );
  }

  Future<ApiResult<FetchRatesResponse>> fetchRates(
    FetchRatesRequestParams params, [
    CancelToken? cancelToken,
  ]) async {
    final cachedRates = await _localDatasource.retrieveRates(params.carId);
    if (cachedRates == null) {
      return await _fetchRatesAndCacheIt(params, cancelToken);
    } else {
      debugPrint(
          '*#*#*#*#* CACHED RATES HAS BEEN RETRIEVED for CAR ID ${params.carId} *#*#*#*#*');
      return ApiResult.success(cachedRates);
    }
  }

  Future<ApiResult<FetchRatesResponse>> _fetchRatesAndCacheIt(
    FetchRatesRequestParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<FetchRatesResponse>(() async {
      final ratesResponse = await _apiService.fetchRates(
        carId: params.carId,
        page: params.page,
        perPage: params.perPage,
        rate: params.rate,
        cancelToken: cancelToken,
      );
      await _localDatasource.cacheRates(
        ratesResponse: ratesResponse,
        carId: params.carId,
      );
      return ratesResponse;
    });
  }
}

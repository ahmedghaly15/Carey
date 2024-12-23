import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';

part 'product_reviews_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ProductReviewsApiService {
  factory ProductReviewsApiService(Dio dio, {String baseUrl}) =
      _ProductReviewsApiService;

  @POST(EndPoints.rates)
  Future<void> addReview(@Body() AddReviewRequestParams params);

  @DELETE('${EndPoints.rates}{rateId}')
  Future<void> deleteReview(
    @Path('rateId') int rateId, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.rates)
  Future<FetchRatesResponse> fetchRates({
    @Query('carId') required int carId,
    @Query('page') int? page,
    @Query('perPage') int? perPage,
    @CancelRequest() CancelToken? cancelToken,
  });
}

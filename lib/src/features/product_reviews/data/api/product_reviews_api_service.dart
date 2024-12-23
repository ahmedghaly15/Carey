import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'product_reviews_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ProductReviewsApiService {
  factory ProductReviewsApiService(Dio dio, {String baseUrl}) =
      _ProductReviewsApiService;

  Future<void> addReview(@Body() AddReviewRequestParams params);
}

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/product_reviews/data/api/product_reviews_api_service.dart';
import 'package:carey/src/features/product_reviews/data/models/add_review_request_params.dart';

class ProductReviewsRepo {
  final ProductReviewsApiService _apiService;

  ProductReviewsRepo(this._apiService);

  Future<ApiResult<void>> addReview(AddReviewRequestParams params) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.addReview(params),
    );
  }
}

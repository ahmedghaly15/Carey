import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/wishlist/data/apis/wishlist_api_service.dart';
import 'package:carey/src/features/wishlist/data/models/add_to_wishlist_params.dart';

class WishlistRepo {
  final WishlistApiService _wishlistApiService;

  WishlistRepo(this._wishlistApiService);

  Future<ApiResult<void>> addToWishlist(int carId) {
    return executeAndHandleErrors<void>(
      () async => await _wishlistApiService.addToWishlist(
        AddToWishlistParams(carId: carId),
      ),
    );
  }
}

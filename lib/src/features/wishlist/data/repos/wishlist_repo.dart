import 'package:flutter/material.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/wishlist/data/apis/wishlist_api_service.dart';
import 'package:carey/src/features/wishlist/data/datasource/wishlist_local_datasource.dart';
import 'package:carey/src/features/wishlist/data/models/add_to_wishlist_params.dart';
import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';

class WishlistRepo {
  final WishlistApiService _wishlistApiService;
  final WishlistLocalDatasource _localDatasource;

  WishlistRepo(this._wishlistApiService, this._localDatasource);

  Future<ApiResult<void>> addToWishlist(int carId) {
    return executeAndHandleErrors<void>(
      () async => await _wishlistApiService.addToWishlist(
        AddToWishlistParams(carId: carId),
      ),
    );
  }

  Future<ApiResult<void>> removeFromWishlist(int carId) {
    return executeAndHandleErrors<void>(
      () async => await _wishlistApiService.removeFromWishlist(carId),
    );
  }

  Future<ApiResult<FetchMyWishlistResponse>> fetchMyWishlist() async {
    final cachedWishlist = await _localDatasource.retrieveCachedWishlist();
    if (cachedWishlist == null) {
      debugPrint('*#*#*#*#* NO CACHED WISHLIST TO RETRIEVE *#*#*#*#*');
      return executeAndHandleErrors<FetchMyWishlistResponse>(() async {
        final wishlistResponse = await _wishlistApiService.fetchMyWishlist();
        await _localDatasource.cacheWishlist(wishlistResponse);
        return wishlistResponse;
      });
    } else {
      debugPrint('*#*#*#*#* CACHED WISHLIST HAS BEEN RETRIEVED *#*#*#*#*');
      return ApiResult.success(cachedWishlist);
    }
  }
}

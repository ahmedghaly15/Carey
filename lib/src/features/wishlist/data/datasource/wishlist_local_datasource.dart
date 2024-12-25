import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:carey/src/core/helpers/hive_boxes.dart';
import 'package:carey/src/core/helpers/hive_keys.dart';
import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';

class WishlistLocalDatasource {
  const WishlistLocalDatasource();

  Future<void> cacheWishlist(FetchMyWishlistResponse wishlistResponse) async {
    final box =
        await Hive.openLazyBox<FetchMyWishlistResponse>(HiveBoxes.wishlist);
    debugPrint('*#*#*#*#* WISHLIST HAS BEEN CACHED *#*#*#*#*');
    await box.put(HiveKeys.myWishlistResponse, wishlistResponse);
  }

  Future<FetchMyWishlistResponse?> retrieveCachedWishlist() async {
    final box =
        await Hive.openLazyBox<FetchMyWishlistResponse>(HiveBoxes.wishlist);
    return box.get(HiveKeys.myWishlistResponse);
  }

  static Future<void> deleteCachedWishlist() async {
    final box =
        await Hive.openLazyBox<FetchMyWishlistResponse>(HiveBoxes.wishlist);
    debugPrint('*#*#*#*#* WISHLIST HAS BEEN DELETED *#*#*#*#*');
    await box.delete(HiveKeys.myWishlistResponse);
  }
}

import 'package:hive_flutter/hive_flutter.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';
import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';

class HiveHelper {
  HiveHelper._();

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(HomeResponseDataAdapter());
    Hive.registerAdapter(CarBrandModelAdapter());
    Hive.registerAdapter(CarAdapter());
    Hive.registerAdapter(CarAttachmentAdapter());
    Hive.registerAdapter(CarRateAdapter());
    Hive.registerAdapter(CarUserAdapter());
    Hive.registerAdapter(FetchSpecialOffersResponseAdapter());
    Hive.registerAdapter(SpecialOfferAdapter());
    Hive.registerAdapter(FetchMyWishlistResponseAdapter());
    Hive.registerAdapter(WishlistAdapter());
    Hive.registerAdapter(CarWishlistAdapter());
  }
}

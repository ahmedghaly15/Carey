import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:carey/src/core/helpers/hive_boxes.dart';
import 'package:carey/src/core/helpers/hive_keys.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';

class ProductReviewsLocalDatasource {
  const ProductReviewsLocalDatasource();

  Future<void> cacheRates({
    required FetchRatesResponse ratesResponse,
    required int carId,
  }) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    debugPrint(
        '*#*#*#*#* RATES RESPONSE HAS BEEN CACHED for CAR ID $carId *#*#*#*#*');
    await box.put(
      '${HiveKeys.fetchRatesResponse}_${carId}_${currentUserData!.user.email}',
      ratesResponse,
    );
  }

  Future<FetchRatesResponse?> retrieveRates(int carId) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    return box.get(
      '${HiveKeys.fetchRatesResponse}_${carId}_${currentUserData!.user.email}',
    );
  }

  static Future<void> deleteCachedRates(int carId) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    debugPrint(
        '*#*#*#*#* CACHED RATES RESPONSE DATA HAS BEEN DELETED for CAR ID $carId *#*#*#*#*');
    await box.delete(
      '${HiveKeys.fetchRatesResponse}_${carId}_${currentUserData!.user.email}',
    );
  }
}

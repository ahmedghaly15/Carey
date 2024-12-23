import 'package:carey/src/core/helpers/hive_boxes.dart';
import 'package:carey/src/core/helpers/hive_keys.dart';
import 'package:carey/src/features/product_reviews/data/models/fetch_rates_response.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductReviewsLocalDatasource {
  const ProductReviewsLocalDatasource();

  Future<void> cacheRates({
    required FetchRatesResponse ratesResponse,
    required int carId,
  }) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    await box.put('${HiveKeys.fetchRatesResponse}_$carId', ratesResponse);
  }

  Future<FetchRatesResponse?> retrieveRates(int carId) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    return box.get('${HiveKeys.fetchRatesResponse}_$carId');
  }

  static Future<void> deleteRates(int carId) async {
    final box = await Hive.openBox<FetchRatesResponse>(HiveBoxes.rates);
    await box.delete('${HiveKeys.fetchRatesResponse}_$carId');
  }
}

import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  HiveHelper._();

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(HomeResponseDataAdapter());
    Hive.registerAdapter(CarBrandModelAdapter());
    Hive.registerAdapter(CarAdapter());
    Hive.registerAdapter(CarAttachmentAdapter());
    Hive.registerAdapter(CarRateAdapter());
  }
}

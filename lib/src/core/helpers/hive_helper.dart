import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  HiveHelper._();

  static final List _adapters = [
    HomeResponseDataAdapter(),
    CarAdapter(),
    CarBrandModelAdapter(),
    CarAttachmentAdapter(),
    CarRateAdapter(),
  ];

  static Future<void> registerAdapters() async {
    for (final adapter in _adapters) {
      Hive.registerAdapter(adapter);
    }
  }
}

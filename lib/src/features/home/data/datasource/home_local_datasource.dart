import 'package:carey/src/core/helpers/hive_boxes.dart';
import 'package:carey/src/core/helpers/hive_keys.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeLocalDataSource {
  Future<void> cacheHomeData(HomeResponseData data) async {
    final box =
        await Hive.openLazyBox<HomeResponseData>(HiveBoxes.homeResponseData);
    debugPrint('*#*#*#*#* HOME RESPONSE DATA HAS BEEN CACHED *#*#*#*#*');
    await box.put(
      '${HiveKeys.homeResponseData}_${currentUserData!.user.email}',
      data,
    );
  }

  Future<HomeResponseData?> retrieveCachedHomeData() async {
    final box =
        await Hive.openLazyBox<HomeResponseData>(HiveBoxes.homeResponseData);
    debugPrint(
        '*#*#*#*#* CACHED HOME RESPONSE DATA HAS BEEN RETRIEVED *#*#*#*#*');
    return box.get(
      '${HiveKeys.homeResponseData}_${currentUserData!.user.email}',
    );
  }
}

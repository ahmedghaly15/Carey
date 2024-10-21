import 'dart:developer';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';

class SecureStorageHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  SecureStorageHelper._();

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static setSecuredString(String key, String value) async {
    if (kDebugMode) {
      log("FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    }
    await getIt.get<FlutterSecureStorage>().write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  static Future<String> getSecuredString(String key) async {
    if (kDebugMode) {
      log('FlutterSecureStorage : getSecuredString with $key :');
    }
    return await getIt.get<FlutterSecureStorage>().read(key: key) ?? '';
  }

  /// Removes a value from FlutterSecureStorage with given [key].
  static removeSecuredData(String key) async {
    if (kDebugMode) {
      log('FlutterSecureStorage : data with key : $key has been removed');
    }
    await getIt.get<FlutterSecureStorage>().delete(key: key);
  }

  /// Removes all keys and values in the FlutterSecureStorage
  static clearAllSecuredData() async {
    if (kDebugMode) {
      log('FlutterSecureStorage : all data has been cleared');
    }
    await getIt.get<FlutterSecureStorage>().deleteAll();
  }
}

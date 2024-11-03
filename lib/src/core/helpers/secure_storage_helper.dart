import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/colorful_log_printer.dart';

class SecureStorageHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  SecureStorageHelper._();

  static final Logger _logger = Logger(
    printer: ColorfulPrinter(type: ColorfulLogPrinterColor.white),
  );

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static setSecuredString(String key, String value) async {
    _logger
        .i('FlutterSecureStorage : setData with key : $key and value : $value');
    await getIt.get<FlutterSecureStorage>().write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  static Future<String> getSecuredString(String key) async {
    _logger.i('FlutterSecureStorage : getSecuredString with key : $key');
    return await getIt.get<FlutterSecureStorage>().read(key: key) ?? '';
  }

  /// Removes a value from FlutterSecureStorage with given [key].
  static removeSecuredData(String key) async {
    _logger.i('FlutterSecureStorage : data with key : $key has been removed');
    await getIt.get<FlutterSecureStorage>().delete(key: key);
  }

  /// Removes all keys and values in the FlutterSecureStorage
  static clearAllSecuredData() async {
    _logger.i('FlutterSecureStorage : all data has been cleared');
    await getIt.get<FlutterSecureStorage>().deleteAll();
  }
}

import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/colorful_log_printer.dart';

class SharedPrefHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  SharedPrefHelper._();

  static final Logger _logger = Logger(
    printer: ColorfulPrinter(type: ColorfulLogPrinterColor.white),
  );

  /// Saves a [value] with a [key] in the SharedPreferences.
  static Future<bool> setData(String key, value) async {
    _logger.i("SharedPrefHelper : setData with key : $key and value : $value");
    switch (value.runtimeType) {
      case const (String):
        return await getIt.get<SharedPreferences>().setString(key, value);
      case const (int):
        return await getIt.get<SharedPreferences>().setInt(key, value);
      case const (bool):
        return await getIt.get<SharedPreferences>().setBool(key, value);
      case const (double):
        return await getIt.get<SharedPreferences>().setDouble(key, value);
      default:
        return false;
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  static Future<bool> getBool(String key) async {
    _logger.i('SharedPrefHelper : getBool with key : $key');
    return getIt.get<SharedPreferences>().getBool(key) ?? false;
  }

  /// Gets a double value from SharedPreferences with given [key].
  static getDouble(String key) async {
    _logger.i('SharedPrefHelper : getDouble with key : $key');
    return getIt.get<SharedPreferences>().getDouble(key) ?? 0.0;
  }

  /// Gets an int value from SharedPreferences with given [key].
  static getInt(String key) async {
    _logger.i('SharedPrefHelper : getInt with key : $key');
    return getIt.get<SharedPreferences>().getInt(key) ?? 0;
  }

  /// Gets an String value from SharedPreferences with given [key].
  static Future<String> getString(String key) async {
    _logger.i('SharedPrefHelper : getString with key : $key');
    return getIt.get<SharedPreferences>().getString(key) ?? '';
  }

  /// Removes a value from SharedPreferences with given [key].
  static removeData(String key) async {
    _logger.i('SharedPrefHelper : data with key : $key has been removed');
    await getIt.get<SharedPreferences>().remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
  static clearAllData() async {
    _logger.i('SharedPrefHelper : all data has been cleared');
    await getIt.get<SharedPreferences>().clear();
  }
}

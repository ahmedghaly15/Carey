import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';

class RememberMeHelper {
  RememberMeHelper._();

  static Future<String?> getRememberedPass() async =>
      await SecureStorageHelper.getSecuredString(
        CacheKeys.rememberedPassword,
      );

  static Future<String?> getRememberedEmail() async =>
      await SecureStorageHelper.getSecuredString(CacheKeys.rememberedEmail);

  static Future<void> rememberEmailAndPassword({
    required String emailValue,
    required String passwordValue,
  }) async {
    await SecureStorageHelper.setSecuredString(
      CacheKeys.rememberedEmail,
      emailValue,
    );
    await SecureStorageHelper.setSecuredString(
      CacheKeys.rememberedPassword,
      passwordValue,
    );
  }

  static Future<void> deleteRememberedEmailAndPassword() async {
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedEmail,
    );
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedPassword,
    );
  }
}

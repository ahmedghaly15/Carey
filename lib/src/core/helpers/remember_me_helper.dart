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

  static Future<void> handleRememberingEmailAndPassword({
    required bool isRemembered,
    required String emailValue,
    required String passwordValue,
  }) async {
    if (isRemembered) {
      await _rememberEmailAndPassword(
        emailValue: emailValue,
        passwordValue: passwordValue,
      );
    } else {
      await _deleteRememberedEmailAndPassword();
    }
  }

  static Future<void> _rememberEmailAndPassword({
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

  static Future<void> _deleteRememberedEmailAndPassword() async {
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedEmail,
    );
    await SecureStorageHelper.removeSecuredData(
      CacheKeys.rememberedPassword,
    );
  }
}

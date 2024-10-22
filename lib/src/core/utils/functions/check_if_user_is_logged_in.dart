import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/datasources/login_local_data_source.dart';

Future<void> checkIfUserIsLoggedIn() async {
  final userData =
      await SecureStorageHelper.getSecuredString(CacheKeys.cachedUserData);

  if (userData.isNullOrEmpty) {
    isUserLoggedIn = false;
  } else {
    currentUserData = await LoginLocalDataSource.getSecuredUserData();
    isUserLoggedIn = true;
  }
}

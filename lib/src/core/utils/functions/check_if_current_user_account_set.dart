import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/secure_storage_helper.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/datasources/auth_local_data_source.dart';

Future<void> checkIfCurrentUserAccountSet() async {
  if (isUserLoggedIn) {
    final cachedUserData =
        await SecureStorageHelper.getSecuredString(CacheKeys.cachedUserData);
    if (cachedUserData.isNullOrEmpty) {
      isCurrentUserAccountSet = false;
    } else {
      final userData = await AuthLocalDataSource.getSecuredUserData();
      if (userData.user.fullName.isNullOrEmpty) {
        isCurrentUserAccountSet = false;
      } else {
        isCurrentUserAccountSet = true;
      }
    }
  }
}

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/datasources/auth_local_data_source.dart';

Future<void> checkIfCurrentUserAccountSet() async {
  final userData = await AuthLocalDataSource.getSecuredUserData();
  if (userData.user.fullName.isNullOrEmpty) {
    isCurrentUserAccountSet = false;
  } else {
    isCurrentUserAccountSet = true;
  }
}

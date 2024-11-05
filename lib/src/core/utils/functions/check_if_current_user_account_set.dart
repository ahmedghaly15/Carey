import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';

Future<void> checkIfCurrentUserAccountIsSet() async {
  if (isUserLoggedIn) {
    if (currentUserData!.user.fullName.isNullOrEmpty) {
      isCurrentUserAccountSet = false;
    } else {
      isCurrentUserAccountSet = true;
    }
  }
}

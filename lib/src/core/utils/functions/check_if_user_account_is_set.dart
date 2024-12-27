import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';

Future<void> checkIfUserAccountIsSet() async {
  if (isUserLoggedIn) {
    if (currentUserData!.user.fullName.isNullOrEmpty) {
      isUserAccountSet = false;
    } else {
      isUserAccountSet = true;
    }
  }
}

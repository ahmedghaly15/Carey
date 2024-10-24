import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/carey_app.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/bloc_observer.dart';
import 'package:carey/src/core/utils/functions/check_if_current_user_account_set.dart';
import 'package:carey/src/core/utils/functions/check_if_user_is_logged_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await setupDI();
  await Future.wait([
    checkIfUserIsLoggedIn(),
    checkIfCurrentUserAccountSet(),
  ]);
  runApp(const CareyApp());
}

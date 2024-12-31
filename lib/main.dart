import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:carey/firebase_options.dart';
import 'package:carey/src/carey_app.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/bloc_observer.dart';
import 'package:carey/src/core/helpers/hive_helper.dart';
import 'package:carey/src/core/utils/functions/check_if_user_account_is_set.dart';
import 'package:carey/src/core/utils/functions/check_if_user_is_logged_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  await dotenv.load();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  HiveHelper.registerAdapters();
  await setupDI();
  await checkIfUserIsLoggedIn();
  await checkIfUserAccountIsSet();
  runApp(const CareyApp());
}

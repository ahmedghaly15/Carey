import 'package:carey/src/core/router/app_router.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  _setupDIForCore();
}

void _setupDIForCore() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

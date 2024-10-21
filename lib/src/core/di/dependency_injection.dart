import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  await _setupForExternal();
  _setupDIForCore();
  _setupForCubits();
}

Future<void> _setupForExternal() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

void _setupDIForCore() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

void _setupForCubits() {
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(),
  );
}

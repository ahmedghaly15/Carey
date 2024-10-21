import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/login/data/api/login_api_service.dart';
import 'package:carey/src/features/login/data/datasources/login_remote_data_source.dart';
import 'package:carey/src/features/login/data/repositories/login_repo_impl.dart';
import 'package:carey/src/features/login/domain/repositories/login_repo.dart';
import 'package:carey/src/features/login/domain/usecases/login_via_email_and_password_use_case.dart';
import 'package:carey/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  await _setupForExternal();
  _setupDIForCore();
  _setupForApiServices();
  _setupForRemoteDataSources();
  _setupForRepos();
  _setupForUseCases();
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

void _setupForApiServices() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
}

void _setupForRemoteDataSources() {
  getIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(getIt.get<LoginApiService>()),
  );
}

void _setupForRepos() {
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(getIt.get<LoginRemoteDataSource>()),
  );
}

void _setupForUseCases() {
  getIt.registerLazySingleton<LoginViaEmailAndPasswordUseCase>(
    () => LoginViaEmailAndPasswordUseCase(getIt.get<LoginRepo>()),
  );
}

void _setupForCubits() {
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginViaEmailAndPasswordUseCase>()),
  );
}

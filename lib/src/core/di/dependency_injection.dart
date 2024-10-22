import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/datasources/login_remote_data_source.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo_impl.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  const flutterSecureStorage = FlutterSecureStorage();
  getIt.registerLazySingleton<FlutterSecureStorage>(() => flutterSecureStorage);
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
  getIt.registerLazySingleton<LoginViaPassword>(
    () => LoginViaPassword(getIt.get<LoginRepo>()),
  );
}

void _setupForCubits() {
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt.get<LoginViaPassword>()),
  );
  getIt.registerFactory<FormAttributesCubit>(
    () => FormAttributesCubit(),
  );
}

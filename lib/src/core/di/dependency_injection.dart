import 'package:carey/src/features/auth/data/apis/account_setup_api_service.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/apis/register_api_service.dart';
import 'package:carey/src/features/auth/data/datasources/login_remote_data_source.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo_impl.dart';
import 'package:carey/src/features/auth/data/repositories/register_repo.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';

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
  getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());
}

void _setupDIForCore() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

void _setupForApiServices() {
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<RegisterApiService>(
    () => RegisterApiService(dio),
  );
  getIt.registerLazySingleton<AccountSetupApiService>(
    () => AccountSetupApiService(dio),
  );
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
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(getIt.get<RegisterApiService>()),
  );
  getIt.registerLazySingleton<AccountSetupRepo>(
    () => AccountSetupRepo(getIt.get<AccountSetupApiService>()),
  );
}

void _setupForUseCases() {
  getIt.registerLazySingleton<LoginViaPassword>(
    () => LoginViaPassword(getIt.get<LoginRepo>()),
  );
  getIt.registerLazySingleton<UpdateProfile>(
    () => UpdateProfile(getIt.get<AccountSetupRepo>()),
  );
}

void _setupForCubits() {
  getIt.registerFactory<FormAttributesCubit>(
    () => FormAttributesCubit(),
  );
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt.get<LoginViaPassword>()),
  );
  getIt.registerLazySingleton<RegisterCubit>(
    () => RegisterCubit(getIt.get<RegisterRepo>()),
  );
  getIt.registerFactory<AccountSetupCubit>(
    () => AccountSetupCubit(getIt.get<UpdateProfile>()),
  );
}

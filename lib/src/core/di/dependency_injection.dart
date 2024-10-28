import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/services/local_auth.dart';
import 'package:carey/src/features/auth/data/apis/account_setup_api_service.dart';
import 'package:carey/src/features/auth/data/apis/forgot_password_api_service.dart';
import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/apis/pin_code_verification_api_service.dart';
import 'package:carey/src/features/auth/data/apis/register_api_service.dart';
import 'package:carey/src/features/auth/data/apis/reset_pass_api_service.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';
import 'package:carey/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo_impl.dart';
import 'package:carey/src/features/auth/data/repositories/pin_code_verification_repo.dart';
import 'package:carey/src/features/auth/data/repositories/register_repo.dart';
import 'package:carey/src/features/auth/data/repositories/reset_pass_repo.dart';
import 'package:carey/src/features/auth/data/repositories/set_fingerprint_repo.dart';
import 'package:carey/src/features/auth/domain/repositories/login_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/domain/usecases/update_password.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  await _setupForExternal();
  _setupDIForCore();
  _setupForApiServices();
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
  final LocalAuthentication localAuth = LocalAuthentication();
  getIt.registerLazySingleton<LocalAuthentication>(() => localAuth);
}

void _setupDIForCore() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerCachedFactory<LocalAuth>(
    () => LocalAuth(getIt.get<LocalAuthentication>()),
  );
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
  getIt.registerLazySingleton<ForgotPasswordApiService>(
    () => ForgotPasswordApiService(dio),
  );
  getIt.registerLazySingleton<PinCodeVerificationApiService>(
    () => PinCodeVerificationApiService(dio),
  );
  getIt.registerLazySingleton<ResetPassApiService>(
    () => ResetPassApiService(dio),
  );
}

void _setupForRepos() {
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(getIt.get<LoginApiService>()),
  );
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(getIt.get<RegisterApiService>()),
  );
  getIt.registerLazySingleton<AccountSetupRepo>(
    () => AccountSetupRepo(getIt.get<AccountSetupApiService>()),
  );
  getIt.registerLazySingleton<SetFingerprintRepo>(
    () => SetFingerprintRepo(getIt.get<LocalAuth>()),
  );
  getIt.registerLazySingleton<ForgotPasswordRepo>(
    () => ForgotPasswordRepo(getIt.get<ForgotPasswordApiService>()),
  );
  getIt.registerLazySingleton<PinCodeVerificationRepo>(
    () => PinCodeVerificationRepo(getIt.get<PinCodeVerificationApiService>()),
  );
  getIt.registerLazySingleton<ResetPassRepo>(
    () => ResetPassRepo(getIt.get<ResetPassApiService>()),
  );
}

void _setupForUseCases() {
  getIt.registerLazySingleton<LoginViaPassword>(
    () => LoginViaPassword(getIt.get<LoginRepo>()),
  );
  getIt.registerLazySingleton<UpdateProfile>(
    () => UpdateProfile(getIt.get<AccountSetupRepo>()),
  );
  getIt.registerLazySingleton<UpdatePasswordUseCase>(
    () => UpdatePasswordUseCase(getIt.get<ResetPassRepo>()),
  );
}

void _setupForCubits() {
  getIt.registerFactory<FormAttributesCubit>(
    () => FormAttributesCubit(),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginViaPassword>()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt.get<RegisterRepo>()),
  );
  getIt.registerFactory<AccountSetupCubit>(
    () => AccountSetupCubit(),
  );
  getIt.registerFactory<SetFingerprintCubit>(
    () => SetFingerprintCubit(
      updateProfileUseCase: getIt.get<UpdateProfile>(),
      fingerprintRepo: getIt.get<SetFingerprintRepo>(),
    ),
  );
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(getIt.get<ForgotPasswordRepo>()),
  );
  getIt.registerFactory<PinCodeVerificationCubit>(
    () => PinCodeVerificationCubit(getIt.get<PinCodeVerificationRepo>()),
  );
  getIt.registerFactory<ResetPassCubit>(
    () => ResetPassCubit(getIt.get<UpdatePasswordUseCase>()),
  );
}

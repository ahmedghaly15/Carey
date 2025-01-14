import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/services/local_auth.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/auth/data/apis/account_setup_api_service.dart';
import 'package:carey/src/features/auth/data/apis/biometric_api_service.dart';
import 'package:carey/src/features/auth/data/apis/forgot_password_api_service.dart';
import 'package:carey/src/features/auth/data/apis/login_api_service.dart';
import 'package:carey/src/features/auth/data/apis/pin_code_verification_api_service.dart';
import 'package:carey/src/features/auth/data/apis/register_api_service.dart';
import 'package:carey/src/features/auth/data/apis/reset_pass_api_service.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';
import 'package:carey/src/features/auth/data/repositories/biometric_repo.dart';
import 'package:carey/src/features/auth/data/repositories/forgot_password_repo.dart';
import 'package:carey/src/features/auth/data/repositories/login_repo.dart';
import 'package:carey/src/features/auth/data/repositories/pin_code_verification_repo.dart';
import 'package:carey/src/features/auth/data/repositories/register_repo.dart';
import 'package:carey/src/features/auth/data/repositories/reset_pass_repo.dart';
import 'package:carey/src/features/auth/domain/usecases/fetch_my_profile.dart';
import 'package:carey/src/features/auth/domain/usecases/login_via_password.dart';
import 'package:carey/src/features/auth/domain/usecases/pick_compressed_img.dart';
import 'package:carey/src/features/auth/domain/usecases/update_password.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_details.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_img.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/home/data/api/home_api_service.dart';
import 'package:carey/src/features/home/data/datasource/home_local_datasource.dart';
import 'package:carey/src/features/home/data/repositories/home_repo.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_cubit.dart';
import 'package:carey/src/features/product_reviews/data/api/product_reviews_api_service.dart';
import 'package:carey/src/features/product_reviews/data/datasources/product_reviews_local_datasource.dart';
import 'package:carey/src/features/product_reviews/data/repositories/product_reviews_repo.dart';
import 'package:carey/src/features/product_reviews/presentation/cubit/product_reviews_cubit.dart';
import 'package:carey/src/features/wishlist/data/apis/wishlist_api_service.dart';
import 'package:carey/src/features/wishlist/data/datasource/wishlist_local_datasource.dart';
import 'package:carey/src/features/wishlist/data/repos/wishlist_repo.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/fetch_wishlist/fetch_wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  await _setupForExternal();
  _setupDIForCore();
  _setupForApiServices();
  _setupForLocalDataSources();
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
  getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());
}

void _setupDIForCore() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerCachedFactory<LocalAuth>(
    () => LocalAuth(getIt.get<LocalAuthentication>()),
  );
}

void _setupForApiServices() {
  final Dio dio = DioFactory.getDio();
  final baseUrl =
      dotenv.env[AppStrings.baseUrlEnvKey] ?? 'https://fallback-url.com/';

  getIt.registerLazySingleton<LoginApiService>(
    () => LoginApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<RegisterApiService>(
    () => RegisterApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<AccountSetupApiService>(
    () => AccountSetupApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<BiometricApiService>(
    () => BiometricApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<ForgotPasswordApiService>(
    () => ForgotPasswordApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<PinCodeVerificationApiService>(
    () => PinCodeVerificationApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<ResetPassApiService>(
    () => ResetPassApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<WishlistApiService>(
    () => WishlistApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(dio, baseUrl: baseUrl),
  );
  getIt.registerLazySingleton<ProductReviewsApiService>(
    () => ProductReviewsApiService(dio, baseUrl: baseUrl),
  );
}

void _setupForLocalDataSources() {
  getIt.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSource());
  getIt.registerLazySingleton<WishlistLocalDatasource>(
    () => const WishlistLocalDatasource(),
  );
  getIt.registerLazySingleton<ProductReviewsLocalDatasource>(
    () => const ProductReviewsLocalDatasource(),
  );
}

void _setupForRepos() {
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt.get<LoginApiService>()),
  );
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(getIt.get<RegisterApiService>()),
  );
  getIt.registerLazySingleton<AccountSetupRepo>(
    () => AccountSetupRepo(getIt.get<AccountSetupApiService>()),
  );
  getIt.registerLazySingleton<BiometricRepo>(
    () => BiometricRepo(
      localAuth: getIt.get<LocalAuth>(),
      biometricApiService: getIt.get<BiometricApiService>(),
    ),
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
  getIt.registerLazySingleton<WishlistRepo>(
    () => WishlistRepo(
      getIt.get<WishlistApiService>(),
      getIt.get<WishlistLocalDatasource>(),
    ),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(
      getIt.get<HomeApiService>(),
      getIt.get<HomeLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<ProductReviewsRepo>(
    () => ProductReviewsRepo(
      getIt.get<ProductReviewsApiService>(),
      getIt.get<ProductReviewsLocalDatasource>(),
    ),
  );
}

void _setupForUseCases() {
  getIt.registerLazySingleton<UpdatePasswordUseCase>(
    () => UpdatePasswordUseCase(getIt.get<ResetPassRepo>()),
  );
  getIt.registerLazySingleton<LoginViaPassword>(
    () => LoginViaPassword(getIt.get<LoginRepo>()),
  );
  getIt.registerLazySingleton<UpdateProfileDetails>(
    () => UpdateProfileDetails(getIt.get<AccountSetupRepo>()),
  );
  getIt.registerLazySingleton<UpdateProfileImg>(
    () => UpdateProfileImg(getIt.get<AccountSetupRepo>()),
  );
  getIt.registerLazySingleton<PickCompressedImg>(() => PickCompressedImg());
  getIt.registerLazySingleton<FetchMyProfile>(
    () => FetchMyProfile(getIt.get<AccountSetupRepo>()),
  );
}

void _setupForCubits() {
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt.get<LoginRepo>()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt.get<RegisterRepo>()),
  );
  getIt.registerLazySingleton<AccountSetupCubit>(
    () => AccountSetupCubit(
      updateProfileDetailsUseCase: getIt.get<UpdateProfileDetails>(),
      updateProfileImgUseCase: getIt.get<UpdateProfileImg>(),
      pickCompressedImgUseCase: getIt.get<PickCompressedImg>(),
      fetchMyProfileUseCase: getIt.get<FetchMyProfile>(),
    ),
  );
  getIt.registerLazySingleton<BiometricCubit>(
    () => BiometricCubit(
      updateProfileDetailsUseCase: getIt.get<UpdateProfileDetails>(),
      biometricRepo: getIt.get<BiometricRepo>(),
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
  getIt.registerLazySingleton<HomeCubit>(
    () => HomeCubit(getIt.get<HomeRepo>()),
  );
  getIt.registerLazySingleton<WishlistCubit>(
    () => WishlistCubit(getIt.get<WishlistRepo>()),
  );
  getIt.registerFactory<FetchWishlistCubit>(
    () => FetchWishlistCubit(getIt.get<WishlistRepo>()),
  );
  getIt.registerFactory<ProductReviewsCubit>(
    () => ProductReviewsCubit(getIt.get<ProductReviewsRepo>()),
  );
  getIt.registerFactory<MakeOfferCubit>(() => MakeOfferCubit());
}

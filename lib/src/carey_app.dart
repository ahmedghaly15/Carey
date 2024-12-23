import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/app_routes_observer.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_themes.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CareyApp extends StatelessWidget {
  const CareyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => BlocProvider<WishlistCubit>.value(
        value: getIt.get<WishlistCubit>(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          theme: AppThemes.lightTheme,
          themeMode: ThemeMode.light,
          routerConfig: getIt.get<AppRouter>().config(
                navigatorObservers: () => [
                  AppRoutesObserver(),
                  AutoRouteObserver(),
                ],
              ),
        ),
      ),
    );
  }
}

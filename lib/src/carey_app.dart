import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/app_routes_observer.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_themes.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class CareyApp extends StatelessWidget {
  const CareyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: AppThemes.lightTheme,
      routerConfig: getIt.get<AppRouter>().config(
            navigatorObservers: () => [
              AppRoutesObserver(),
              AutoRouteObserver(),
            ],
          ),
    );
  }
}

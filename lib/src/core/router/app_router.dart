import 'package:auto_route/auto_route.dart';
import 'package:carey/src/features/auth/presentation/views/login_methods_view.dart';
import 'package:carey/src/features/auth/presentation/views/login_view.dart';
import 'package:carey/src/features/splash/presentation/views/splash_view.dart';
import 'package:carey/src/features/start/presentation/views/start_view.dart';
import 'package:carey/src/features/start/presentation/views/welcome_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage(name: 'StartWelcomeRoute')
class StartWelcome extends AutoRouter {
  const StartWelcome({super.key});
}

@RoutePage(name: 'AuthRoute')
class Auth extends AutoRouter {
  const Auth({super.key});
}

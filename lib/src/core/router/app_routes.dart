part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
      AutoRoute(
        initial: true,
        page: SplashRoute.page,
      ),
      AutoRoute(
        page: StartWelcomeRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: WelcomeRoute.page,
          ),
          _buildCustomRoute(page: StartRoute.page),
        ],
      ),
      AutoRoute(
        page: AuthRoute.page,
        children: [
          AutoRoute(initial: true, page: LoginMethodsRoute.page),
          _buildCustomRoute(page: LoginRoute.page),
          _buildCustomRoute(page: RegisterRoute.page),
        ],
      ),
    ];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) =>
    CustomRoute(
      initial: initial,
      page: page,
      transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.fadeIn,
      durationInMilliseconds: durationInMilliseconds ?? 400,
      children: children,
    );

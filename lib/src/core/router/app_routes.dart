part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
      AutoRoute(
        initial: true,
        page: SplashRoute.page,
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

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppRoutesObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (kDebugMode) {
      log('Previous route: ${previousRoute?.settings.name}');
      log('New route pushed: ${route.settings.name}');
      log('================================================');
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    if (kDebugMode) {
      log('Route Popped : ${route.settings.name}');
      log('================================================');
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (kDebugMode) {
      log('Route Removed : ${route.settings.name}');
      log('================================================');
    }
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (kDebugMode) {
      log('OldRoute : ${oldRoute!.settings.name} was replaced by ${newRoute!.settings.name}');
      log('================================================');
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      debugPrint('Tab route visited: ${route.name}');
      log('================================================');
    }
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (kDebugMode) {
      debugPrint('Tab route re-visited: ${route.name}');
      log('================================================');
    }
    super.didChangeTabRoute(route, previousRoute);
  }
}

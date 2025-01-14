import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/cache_keys.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/shared_pref_helper.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:carey/src/core/widgets/fade_transition_widget.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _carController;
  late AnimationController _loadingController;
  late Animation<double> _carPositionAnimation;
  late Animation<double> _loadingIndicatorPositionAnimation;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _initCarController();
    _initLoadingController();
    _navigateToStartView();
  }

  void _initCarController() {
    _carController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
  }

  void _initLoadingController() {
    _loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
  }

  void _navigateToStartView() {
    _timer = Timer(
      const Duration(seconds: 4),
      () => _pushReplacementNextView(),
    );
  }

  void _pushReplacementNextView() async {
    final isStartViewVisited =
        await SharedPrefHelper.getBool(CacheKeys.isStartViewVisited);

    if (isStartViewVisited) {
      if (isUserLoggedIn && isUserAccountSet) {
        context.replaceRoute(const HomeRoute());
      } else if (isUserLoggedIn && !isUserAccountSet) {
        context.replaceRoute(const AccountSetupRoute());
      } else {
        context.replaceRoute(const AuthRoute());
      }
    } else {
      context.replaceRoute(const StartWelcomeRoute());
    }
  }

  @override
  void didChangeDependencies() {
    // Animate the car moving to the right
    _initCarPositionAnimation();

    // Animate the loading indicator moving down
    _initLoadingIndicatorPositionAnimation();

    // Start the car animation
    _forwardControllers();
    super.didChangeDependencies();
  }

  void _initCarPositionAnimation() {
    _carPositionAnimation = Tween<double>(
      begin:
          context.screenWidth * 0.3, // Start at near the center of the screen
      end: context.screenWidth +
          context.screenWidth * 0.1, // Move far to the right to disappear
    ).animate(
      CurvedAnimation(
        parent: _carController,
        curve: Curves.elasticIn,
      ),
    );
  }

  void _initLoadingIndicatorPositionAnimation() {
    _loadingIndicatorPositionAnimation = Tween<double>(
      begin: context.screenHeight * 0.15, // Start near the bottom
      end: -context.screenHeight * 0.1, // Move down to disappear
    ).animate(
      CurvedAnimation(
        parent: _loadingController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );
  }

  void _forwardControllers() {
    _carController.forward().then((_) {
      if (_carController.status == AnimationStatus.completed) {
        _loadingController.forward();
      }
    });
  }

  @override
  void dispose() {
    _disposeControllers();
    super.dispose();
  }

  void _disposeControllers() {
    _carController.dispose();
    _loadingController.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _carPositionAnimation,
            builder: (context, _) => PositionedDirectional(
              top: context.screenHeight * 0.45,
              start: _carPositionAnimation.value,
              child: FadeTransitionWidget(
                child: Image.asset(
                  Assets.careyIcon,
                  height: 93.h,
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _loadingIndicatorPositionAnimation,
            builder: (context, _) => PositionedDirectional(
              bottom: _loadingIndicatorPositionAnimation.value,
              end: context.screenWidth *
                  0.45, // Start at near the center of the screen
              child: const AnimatedLoadingIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

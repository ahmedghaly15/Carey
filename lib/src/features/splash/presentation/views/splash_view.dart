import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const Scaffold(
              body: Center(
                child: Text('Next'),
              ),
            ),
          ));
    });
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

  void _forwardControllers() {
    _carController.forward().then((_) {
      if (_carController.status == AnimationStatus.completed) {
        _loadingController.forward();
      }
    });
  }

  void _initLoadingIndicatorPositionAnimation() {
    _loadingIndicatorPositionAnimation = Tween<double>(
      begin: context.screenHeight * 0.85, // Start near the bottom
      end: context.screenHeight +
          context.screenHeight * 0.1, // Move down to disappear
    ).animate(
      CurvedAnimation(
        parent: _loadingController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );
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

  @override
  void dispose() {
    _carController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _carPositionAnimation,
            builder: (context, _) => Positioned(
              top: context.screenHeight * 0.4,
              left: _carPositionAnimation.value, // Horizontal movement
              child: Image.asset(Assets.careyIcon),
            ),
          ),
          AnimatedBuilder(
            animation: _loadingIndicatorPositionAnimation,
            builder: (context, _) => Positioned(
              top: _loadingIndicatorPositionAnimation.value,
              left: context.screenWidth *
                  0.45, // Start at near the center of the screen
              child: LoadingAnimationWidget.discreteCircle(
                color: AppColors.primaryColor,
                size: context.screenHeight * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

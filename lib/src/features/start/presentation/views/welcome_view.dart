import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/start/presentation/widgets/welcome_view_body.dart';

@RoutePage()
class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  late Timer _timer;

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  void _startDelay() {
    _timer = Timer(
      const Duration(milliseconds: 1500),
      () => context.replaceRoute(const StartRoute()),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}

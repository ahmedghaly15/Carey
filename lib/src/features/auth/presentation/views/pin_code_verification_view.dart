import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/widgets/arrow_back_icon_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PinCodeVerificationView extends StatelessWidget {
  const PinCodeVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ArrowBackIconButton(),
      ),
    );
  }
}

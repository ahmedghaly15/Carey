import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OkTextButton extends StatelessWidget {
  const OkTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.maybePop(),
      child: const Text('OK'),
    );
  }
}

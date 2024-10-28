import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class OkTextButton extends StatelessWidget {
  const OkTextButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () => context.maybePop(),
      child: const Text(AppStrings.ok),
    );
  }
}

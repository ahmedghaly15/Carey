import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

class CancelOutlinedButton extends StatelessWidget {
  const CancelOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () => context.maybePop(),
      text: AppStrings.cancel,
      isOutlined: true,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:carey/src/features/auth/presentation/widgets/custom_social_login_icon_button.dart';
import 'package:carey/src/features/auth/data/models/social_login_method.dart';

class SocialLoginIconButtons extends StatelessWidget {
  const SocialLoginIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        SocialLoginMethod.socialLoginMethods.length,
        (index) => CustomSocialLoginIconButton(
          method: SocialLoginMethod.socialLoginMethods[index],
          index: index,
        ),
      ),
    );
  }
}

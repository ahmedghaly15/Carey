import 'package:flutter/material.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/login/data/models/social_login_method.dart';
import 'package:carey/src/features/login/presentation/widgets/login_via_social_button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => LoginViaSocialButton(
        method: SocialLoginMethod.socialLoginMethods[index],
      ),
      separatorBuilder: (_, __) => MySizedBox.height17,
      itemCount: SocialLoginMethod.socialLoginMethods.length,
    );
  }
}

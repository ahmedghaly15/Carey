import 'package:flutter/material.dart';

import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/biometric_continue_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/biometric_skip_bloc_listener.dart';

class BiometricSkipAndContinueButtons extends StatelessWidget {
  const BiometricSkipAndContinueButtons({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BiometricSkipBlocListener(
            updateProfileParams: updateProfileParams,
          ),
        ),
        MySizedBox.width16,
        Expanded(
          child: BiometricContinueBlocListener(
            updateProfileParams: updateProfileParams,
          ),
        ),
      ],
    );
  }
}

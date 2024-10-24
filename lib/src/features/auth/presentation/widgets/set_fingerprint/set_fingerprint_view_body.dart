import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/skip_and_continue_buttons.dart';

class SetFingerprintViewBody extends StatelessWidget {
  const SetFingerprintViewBody({super.key, required this.updateProfileParams});

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          AppStrings.addFingerprint,
          style: AppTextStyles.font16Regular,
          textAlign: TextAlign.center,
        ),
        SvgPicture.asset(
          Assets.svgsFingerprint,
          fit: BoxFit.cover,
        ),
        Text(
          AppStrings.pleasePutYourFingerprint,
          style: AppTextStyles.font16Regular,
          textAlign: TextAlign.center,
        ),
        SkipAndContinueButtons(updateProfileParams: updateProfileParams),
      ],
    );
  }
}

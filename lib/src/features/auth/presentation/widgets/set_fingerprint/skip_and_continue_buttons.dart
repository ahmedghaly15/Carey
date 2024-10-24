import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';

class SkipAndContinueButtons extends StatelessWidget {
  const SkipAndContinueButtons({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(
            margin: EdgeInsets.zero,
            backgroundColor: AppColors.grey.withOpacity(0.76),
            onPressed: () {},
            text: AppStrings.skip,
            textColor: Colors.black,
            borderRadius: 12,
          ),
        ),
        MySizedBox.width16,
        Expanded(
          child: PrimaryButton(
            margin: EdgeInsets.zero,
            onPressed: () {},
            text: AppStrings.continueWord,
            borderRadius: 12,
          ),
        ),
      ],
    );
  }
}

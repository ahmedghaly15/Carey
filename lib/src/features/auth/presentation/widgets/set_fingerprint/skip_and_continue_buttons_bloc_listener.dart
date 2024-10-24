import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_state.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkipAndContinueButtonsBlocListener extends StatelessWidget {
  const SkipAndContinueButtonsBlocListener({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SetFingerprintCubit, SetFingerprintState>(
      listenWhen: (_, current) =>
          current.status == SetFingerprintStateStatus.setFingerprintError ||
          current.status == SetFingerprintStateStatus.setFingerprintSuccess ||
          current.status == SetFingerprintStateStatus.updateProfileLoading ||
          current.status == SetFingerprintStateStatus.updateProfileSuccess ||
          current.status == SetFingerprintStateStatus.updateProfileError,
      listener: (context, state) {
        switch (state.status) {
          case SetFingerprintStateStatus.updateProfileLoading:
            context.showLoadingDialog();
            break;
          case SetFingerprintStateStatus.setFingerprintSuccess:
            context
                .read<SetFingerprintCubit>()
                .updateProfile(updateProfileParams);
            break;
          case SetFingerprintStateStatus.updateProfileSuccess:
            context.popTop();
            // TODO: navigate to home
            break;
          case SetFingerprintStateStatus.updateProfileError:
          case SetFingerprintStateStatus.setFingerprintError:
            context.popTop();
            context.showErrorDialog(state.error!);
            break;
          default:
            return;
        }
      },
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              margin: EdgeInsets.zero,
              backgroundColor: AppColors.grey.withOpacity(0.76),
              onPressed: () => context
                  .read<SetFingerprintCubit>()
                  .updateProfile(updateProfileParams),
              text: AppStrings.skip,
              textColor: Colors.black,
              borderRadius: 12,
            ),
          ),
          MySizedBox.width16,
          Expanded(
            child: PrimaryButton(
              margin: EdgeInsets.zero,
              onPressed: () =>
                  context.read<SetFingerprintCubit>().setFingerprint(),
              text: AppStrings.continueWord,
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
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
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
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

  void _listener(SetFingerprintState state, BuildContext context) {
    switch (state.status) {
      case SetFingerprintStateStatus.setFingerprintSuccess:
        _showSuccessDialogAndExecute(
          context,
          afterShowingSuccessDialog: () => context
              .read<SetFingerprintCubit>()
              .updateProfile(updateProfileParams),
        );
        break;
      case SetFingerprintStateStatus.setFingerprintError:
        context.showErrorDialog(state.error!);
        break;
      case SetFingerprintStateStatus.updateProfileLoading:
        context.showLoadingDialog();
        break;
      case SetFingerprintStateStatus.updateProfileSuccess:
        _showSuccessDialogAndExecute(
          context,
          afterShowingSuccessDialog: () {
            // TODO: use pushAndPopUntil => pop until the name is AuthRoute and go home
          },
        );
        break;
      case SetFingerprintStateStatus.updateProfileError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;

      default:
        context.showLoadingDialog();
    }
  }

  void _showSuccessDialogAndExecute(
    BuildContext context, {
    required VoidCallback afterShowingSuccessDialog,
  }) {
    context.showResultDialog(
      barrierDismissible: false,
      hasOkButtonInActions: false,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppStrings.yourAccountIsReady,
            style: AppTextStyles.poppinsFont14RegularDarkGrey,
            textAlign: TextAlign.center,
          ),
          MySizedBox.height8,
          const AnimatedLoadingIndicator(),
        ],
      ),
    );
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.popTop();
        afterShowingSuccessDialog();
      },
    );
  }

  bool _listenWhen(SetFingerprintState current) {
    return current.status == SetFingerprintStateStatus.setFingerprintError ||
        current.status == SetFingerprintStateStatus.setFingerprintSuccess ||
        current.status == SetFingerprintStateStatus.updateProfileLoading ||
        current.status == SetFingerprintStateStatus.updateProfileSuccess ||
        current.status == SetFingerprintStateStatus.updateProfileError;
  }
}

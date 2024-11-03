import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/create_biometric_adaptive_dialog.dart';

class SkipAndContinueButtonsBlocListener extends StatelessWidget {
  const SkipAndContinueButtonsBlocListener({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BiometricCubit, BiometricState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              margin: EdgeInsets.zero,
              backgroundColor: AppColors.grey.withOpacity(0.76),
              onPressed: () => context
                  .read<BiometricCubit>()
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
                  context.read<BiometricCubit>().setLocalBiometric(),
              text: AppStrings.continueWord,
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }

  void _listener(BiometricState state, BuildContext context) {
    switch (state.status) {
      case BiometricStateStatus.setLocalBiometricSuccess:
        context.read<BiometricCubit>().updateProfile(updateProfileParams);
        break;
      case BiometricStateStatus.setLocalBiometricError:
        context.showErrorDialog(state.error!);
        break;
      case BiometricStateStatus.updateProfileLoading:
        context.showLoadingDialog();
        break;
      case BiometricStateStatus.updateProfileSuccess:
        context.popTop();
        _showConfirmWithPasswordDialog(context);
        break;
      case BiometricStateStatus.updateProfileError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;

      default:
        context.showLoadingDialog();
    }
  }

  void _showConfirmWithPasswordDialog(BuildContext context) {
    context.showResultDialog(
      barrierDismissible: false,
      hasOkButtonInActions: false,
      dialog: BlocProvider.value(
        value: context.read<BiometricCubit>(),
        child: const CreateBiometricAdaptiveDialog(),
      ),
    );
  }

  bool _listenWhen(BiometricState current) {
    return current.status == BiometricStateStatus.setLocalBiometricError ||
        current.status == BiometricStateStatus.setLocalBiometricSuccess ||
        current.status == BiometricStateStatus.updateProfileLoading ||
        current.status == BiometricStateStatus.updateProfileSuccess ||
        current.status == BiometricStateStatus.updateProfileError;
  }
}

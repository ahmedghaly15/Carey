import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/create_biometric_adaptive_dialog.dart';

class BiometricContinueBlocListener extends StatelessWidget {
  const BiometricContinueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BiometricCubit, BiometricState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        onPressed: () => context.read<BiometricCubit>().setLocalBiometric(),
        text: AppStrings.continueWord,
        borderRadius: 12,
      ),
    );
  }

  void _listener(BiometricState state, BuildContext context) {
    switch (state.status) {
      case BiometricStateStatus.setLocalBiometricSuccess:
        context.showResultDialog(
          barrierDismissible: false,
          hasOkButtonInActions: false,
          dialog: BlocProvider.value(
            value: context.read<BiometricCubit>(),
            child: const CreateBiometricAdaptiveDialog(),
          ),
        );
        break;
      case BiometricStateStatus.setLocalBiometricError:
        context.showErrorDialog(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.setLocalBiometricError ||
        currentStatus == BiometricStateStatus.setLocalBiometricSuccess;
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';

class CreateBiometricContinueBlocConsumer extends StatelessWidget {
  const CreateBiometricContinueBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BiometricCubit, BiometricState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => PrimaryButton.withAnimatedLoadingOrTextChild(
        onPressed: () =>
            context.read<BiometricCubit>().validatePassAndCreateBiometric(),
        isLoading: state.status == BiometricStateStatus.createBiometricLoading,
        text: AppStrings.continueWord,
      ),
    );
  }

  void _listener(BiometricState state, BuildContext context) {
    switch (state.status) {
      case BiometricStateStatus.createBiometricLoading:
        context.unfocusKeyboard();
        break;
      case BiometricStateStatus.createBiometricSuccess:
        context.maybePop().then((_) async {
          context.read<BiometricCubit>().updateProfile();
        });
        break;
      case BiometricStateStatus.createBiometricError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.createBiometricLoading ||
        currentStatus == BiometricStateStatus.createBiometricError ||
        currentStatus == BiometricStateStatus.createBiometricSuccess;
  }
}

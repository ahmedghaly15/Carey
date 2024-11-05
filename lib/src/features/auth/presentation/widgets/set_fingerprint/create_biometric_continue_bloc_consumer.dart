import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/animated_loading_or_text_widget.dart';
import 'package:carey/src/core/widgets/custom_toast.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';

class CreateBiometricContinueBlocConsumer extends StatelessWidget {
  const CreateBiometricContinueBlocConsumer({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BiometricCubit, BiometricState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => PrimaryButton(
        onPressed: () =>
            context.read<BiometricCubit>().validatePassAndCreateBiometric(),
        child: animatedLoadingOrTextWidget(
          isLoading:
              state.status == BiometricStateStatus.createBiometricLoading,
          text: AppStrings.continueWord,
        ),
      ),
    );
  }

  void _listener(BiometricState state, BuildContext context) {
    switch (state.status) {
      case BiometricStateStatus.createBiometricLoading:
        context.unfocusKeyboard();
        break;
      case BiometricStateStatus.createBiometricSuccess:
        context.maybePop().then((_) {
          context.read<BiometricCubit>().updateProfile(updateProfileParams);
        });
        break;
      case BiometricStateStatus.createBiometricError:
        CustomToast.show(
          context,
          type: CustomToastType.error,
          description: state.error!,
        );
        break;
      default:
        break;
    }
  }

  bool _buildWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.createBiometricLoading ||
        currentStatus == BiometricStateStatus.createBiometricError ||
        currentStatus == BiometricStateStatus.createBiometricSuccess;
  }

  bool _listenWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.createBiometricSuccess ||
        currentStatus == BiometricStateStatus.createBiometricLoading ||
        currentStatus == BiometricStateStatus.createBiometricError;
  }
}

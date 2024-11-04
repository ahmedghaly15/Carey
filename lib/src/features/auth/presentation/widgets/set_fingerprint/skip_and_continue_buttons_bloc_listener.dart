import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
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
      listenWhen: (_, current) => _listenWhen(current.status),
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
        _showConfirmWithPasswordDialog(context);
        break;
      case BiometricStateStatus.setLocalBiometricError:
        context.showErrorDialog(state.error!);
        break;
      case BiometricStateStatus.updateProfileLoading:
        context.showLoadingDialog();
        break;
      case BiometricStateStatus.updateProfileSuccess:
        context.popTop();
        _showSuccessDialogAndGoHome(context);
        break;
      case BiometricStateStatus.updateProfileError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;
      default:
        context.showLoadingDialog();
    }
  }

  void _showSuccessDialogAndGoHome(BuildContext context) {
    // ! i did that (router = context.router) to capture the router because if used context.router directly below
    // ! it will not work because the context of the widget will be coming from a deactivated widget right then
    // ! and the router will be null, so it will not work
    final router = context.router;
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
    Future.delayed(const Duration(seconds: 3), () {
      // TODO: go home instead of go splash
      router.pushAndPopUntil(
        const SplashRoute(),
        predicate: (route) => route.settings.name == AccountSetupRoute.name,
      );
    });
  }

  void _showConfirmWithPasswordDialog(BuildContext context) {
    context.showResultDialog(
      barrierDismissible: false,
      hasOkButtonInActions: false,
      dialog: BlocProvider.value(
        value: context.read<BiometricCubit>(),
        child: CreateBiometricAdaptiveDialog(
          updateProfileParams: updateProfileParams,
        ),
      ),
    );
  }

  bool _listenWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.setLocalBiometricError ||
        currentStatus == BiometricStateStatus.setLocalBiometricSuccess ||
        currentStatus == BiometricStateStatus.updateProfileLoading ||
        currentStatus == BiometricStateStatus.updateProfileSuccess ||
        currentStatus == BiometricStateStatus.updateProfileError;
  }
}

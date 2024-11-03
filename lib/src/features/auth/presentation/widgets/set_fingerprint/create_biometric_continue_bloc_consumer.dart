import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/animated_loading_or_text_widget.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:carey/src/core/widgets/custom_toast.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';

class CreateBiometricContinueBlocConsumer extends StatelessWidget {
  const CreateBiometricContinueBlocConsumer({super.key});

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
        context.maybePop().then((_) => _showSuccessDialogAndGoHome(context));
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

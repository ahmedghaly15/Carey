import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/datasources/user_local_data_source.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';

class BiometricSkipBlocListener extends StatelessWidget {
  const BiometricSkipBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BiometricCubit, BiometricState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        backgroundColor: AppColors.grey.withAlpha(194),
        onPressed: () {
          final router = context.router;
          router.pushAndPopUntil(
            const LayoutRoute(),
            predicate: (route) => route.settings.name == AccountSetupRoute.name,
          );
        },
        text: AppStrings.skip,
        textColor: Colors.black,
        borderRadius: 12,
      ),
    );
  }

  void _listener(BiometricState state, BuildContext context) async {
    switch (state.status) {
      case BiometricStateStatus.updateProfileLoading:
        context.showLoadingDialog();
        break;
      case BiometricStateStatus.updateProfileSuccess:
        context.popTop();
        _showSuccessDialog(context);
        await UserLocalDatasource.updateAndSecureCurrentUser(
          state.careyUser!,
        );
        _pushHomeAndPopUntilAccountSetup(context);
        break;
      case BiometricStateStatus.updateProfileError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;
      default:
        break;
    }
  }

  void _showSuccessDialog(BuildContext context) {
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
  }

  void _pushHomeAndPopUntilAccountSetup(BuildContext context) {
    // ! i did that (router = context.router) to capture the router because if used context.router directly below
    // ! it will not work because the context of the widget will be coming from a deactivated widget right then
    // ! and the router will be null, so it will not work
    final router = context.router;
    Future.delayed(const Duration(seconds: 3), () {
      router.pushAndPopUntil(
        const LayoutRoute(),
        predicate: (route) => route.settings.name == AccountSetupRoute.name,
      );
    });
  }

  bool _listenWhen(BiometricStateStatus currentStatus) {
    return currentStatus == BiometricStateStatus.updateProfileLoading ||
        currentStatus == BiometricStateStatus.updateProfileSuccess ||
        currentStatus == BiometricStateStatus.updateProfileError;
  }
}

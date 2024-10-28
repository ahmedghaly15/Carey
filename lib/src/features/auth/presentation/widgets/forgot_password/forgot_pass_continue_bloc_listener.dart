import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class ForgotPassContinueBlocListener extends StatelessWidget {
  const ForgotPassContinueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) {
        switch (state.status) {
          case ForgotPasswordStateStatus.sendPinLoading:
            context.showLoadingDialog();
            break;
          case ForgotPasswordStateStatus.sendPinSuccess:
            context.popTop();
            context.showResultDialog(
              contentText: AppStrings.pinCodeHasBeenSent,
              okButtonOnPressed: () => _resultDialogOkButtonOnPressed(context),
            );
            break;
          case ForgotPasswordStateStatus.sendPinError:
            context.popTop();
            context.showErrorDialog(state.error!);
            break;
          default:
            context.showLoadingDialog();
        }
      },
      child: PrimaryButton(
        margin: AppConstants.screenHorizontalPadding.add(
          EdgeInsets.only(bottom: 24.h),
        ),
        onPressed: () => context.read<ForgotPasswordCubit>().sendPin(),
        text: AppStrings.continueWord,
      ),
    );
  }

  void _resultDialogOkButtonOnPressed(BuildContext context) {
    context.popTop();
    Future.delayed(const Duration(milliseconds: 200), () {
      context.pushRoute(const PinCodeVerificationRoute());
    });
  }

  bool _listenWhen(ForgotPasswordState current) {
    return current.status == ForgotPasswordStateStatus.sendPinLoading ||
        current.status == ForgotPasswordStateStatus.sendPinSuccess ||
        current.status == ForgotPasswordStateStatus.sendPinError;
  }
}

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
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        margin: AppConstants.screenHorizontalPadding.add(
          EdgeInsets.only(bottom: 24.h),
        ),
        onPressed: () => context.read<ForgotPasswordCubit>().sendPin(),
        text: AppStrings.continueWord,
      ),
    );
  }

  void _listener(ForgotPasswordState state, BuildContext context) {
    switch (state.status) {
      case ForgotPasswordStateStatus.sendPinLoading:
        context.showLoadingDialog();
        break;
      case ForgotPasswordStateStatus.sendPinSuccess:
        context.popTop();
        context.showResultDialog(
          contentText:
              '${AppStrings.pinCodeHasBeenSentTo}. ${AppStrings.checkYourInbox}',
          okButtonOnPressed: () => _resultDialogOkButtonOnPressed(
            context: context,
            contact: state
                .contactDetails![state.selectedContactDetailsIndex].contact!,
          ),
        );
        break;
      case ForgotPasswordStateStatus.sendPinError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;
      default:
        context.showLoadingDialog();
    }
  }

  void _resultDialogOkButtonOnPressed({
    required BuildContext context,
    required String contact,
  }) {
    context.popTop();
    Future.delayed(const Duration(milliseconds: 200), () {
      context.pushRoute(PinCodeVerificationRoute(contact: contact));
    });
  }

  bool _listenWhen(ForgotPasswordStateStatus currentStatus) {
    return currentStatus == ForgotPasswordStateStatus.sendPinLoading ||
        currentStatus == ForgotPasswordStateStatus.sendPinSuccess ||
        currentStatus == ForgotPasswordStateStatus.sendPinError;
  }
}

import 'package:carey/src/core/helpers/extensions.dart';
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

  bool _listenWhen(ForgotPasswordState current) {
    return current.status == ForgotPasswordStateStatus.sendPinLoading ||
        current.status == ForgotPasswordStateStatus.sendPinSuccess ||
        current.status == ForgotPasswordStateStatus.sendPinError;
  }
}

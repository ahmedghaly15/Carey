import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassContinueBlocListener extends StatelessWidget {
  const ResetPassContinueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPassCubit, ResetPassState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) async => await _listener(state, context),
      child: PrimaryButton(
        margin: AppConstants.screenHorizontalPadding.add(
          EdgeInsets.only(bottom: 16.h),
        ),
        onPressed: () =>
            context.read<ResetPassCubit>().validateFormAndResetPass(),
        text: AppStrings.continueWord,
      ),
    );
  }

  Future<void> _listener(ResetPassState state, BuildContext context) async {
    switch (state.status) {
      case ResetPassStateStatus.resetPassLoading:
        context.unfocusKeyboard();
        context.showLoadingDialog();
      case ResetPassStateStatus.resetPassSuccess:
        await _handleResetPassSuccessState(context);
      case ResetPassStateStatus.resetPassError:
        context.popTop();
        context.showErrorDialog(state.error!);
      default:
        context.showLoadingDialog();
    }
  }

  Future<void> _handleResetPassSuccessState(BuildContext context) async {
    context.popTop();
    await context.read<ResetPassCubit>().handleRememberingEmailAndPassword();
    context.showResultDialog(
      contentText: AppStrings.passChangedSuccessfully,
      okButtonOnPressed: () => context.router.pushAndPopUntil(
        const AuthRoute(),
        predicate: (route) => route.settings.name == ForgotPasswordRoute.name,
      ),
    );
  }

  bool _listenWhen(ResetPassStateStatus currentStatus) =>
      currentStatus == ResetPassStateStatus.resetPassLoading ||
      currentStatus == ResetPassStateStatus.resetPassSuccess ||
      currentStatus == ResetPassStateStatus.resetPassError;
}

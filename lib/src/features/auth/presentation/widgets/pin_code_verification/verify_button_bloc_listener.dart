import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/api/dio_factory.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_state.dart';

class VerifyButtonBlocListener extends StatelessWidget {
  const VerifyButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PinCodeVerificationCubit, PinCodeVerificationState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        margin: EdgeInsets.only(bottom: 24.h),
        onPressed: () => context.read<PinCodeVerificationCubit>().verifyPin(),
        text: AppStrings.verify,
      ),
    );
  }

  void _listener(
      PinCodeVerificationState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      verifyLoading: () => context.showLoadingDialog(),
      verifyError: (error) {
        context.popTop();
        context.showErrorDialog(error);
      },
      verifySuccess: (token) {
        DioFactory.setTokenIntoHeaders(token);
        context.popTop();
        Future.delayed(const Duration(milliseconds: 200), () {
          context.pushRoute(const ResetPasswordRoute());
        });
      },
    );
  }

  bool _listenWhen(PinCodeVerificationState<dynamic> current) {
    return current is VerifyLoading ||
        current is VerifySuccess ||
        current is VerifyError;
  }
}

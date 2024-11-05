import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_cubit.dart';

class PinCodePinPut extends StatelessWidget {
  const PinCodePinPut({super.key});

  @override
  Widget build(BuildContext context) {
    final pinVerificationCubit = context.read<PinCodeVerificationCubit>();
    return Pinput(
      autofocus: true,
      controller: pinVerificationCubit.pinController,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      defaultPinTheme: PinTheme(
        textStyle: AppTextStyles.font25SemiBold,
        height: 60.0.h,
        width: 60.0.w,
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9.withOpacity(0.6),
          borderRadius: BorderRadiusDirectional.circular(15.0),
        ),
      ),
      focusedPinTheme: PinTheme(
        textStyle: AppTextStyles.font25SemiBold,
        height: 60.0.h,
        width: 60.0.w,
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9.withOpacity(0.6),
          borderRadius: BorderRadiusDirectional.circular(15.0),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 2.w,
          ),
        ),
      ),
      onCompleted: (_) => context.unfocusKeyboard(),
      length: 6,
    );
  }
}

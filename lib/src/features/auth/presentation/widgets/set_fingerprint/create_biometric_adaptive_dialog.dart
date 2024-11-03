import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/cancel_outlined_button.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/create_biometric_continue_bloc_consumer.dart';

class CreateBiometricAdaptiveDialog extends StatelessWidget {
  const CreateBiometricAdaptiveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      title: SvgPicture.asset(Assets.svgsSuccessDialogImage),
      content: Form(
        key: context.read<BiometricCubit>().formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: BlocSelector<BiometricCubit, BiometricState, bool>(
                selector: (state) => state.isPasswordObscured,
                builder: (context, isPasswordObscured) => PassTextFormField(
                  obscureText: isPasswordObscured,
                  controller: context.read<BiometricCubit>().passwordController,
                  passVisibilityOnTap: () =>
                      context.read<BiometricCubit>().togglePassVisibility(),
                ),
              ),
            ),
            MySizedBox.height32,
            const CreateBiometricContinueBlocConsumer(),
            MySizedBox.height13,
            const CancelOutlinedButton(),
          ],
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 16.h),
    );
  }
}

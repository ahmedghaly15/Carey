import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/cancel_outlined_button.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/pass_text_form_field.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/create_biometric_continue_bloc_consumer.dart';

class CreateBiometricAdaptiveDialog extends StatelessWidget {
  const CreateBiometricAdaptiveDialog({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      title: Text(
        AppStrings.confirmYourPass,
        style: AppTextStyles.font20SemiBoldWhite.copyWith(
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
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
            CreateBiometricContinueBlocConsumer(
              updateProfileParams: updateProfileParams,
            ),
            MySizedBox.height13,
            const CancelOutlinedButton(),
          ],
        ),
      ),
      contentPadding: EdgeInsets.only(top: 32.h, bottom: 16.h),
    );
  }
}

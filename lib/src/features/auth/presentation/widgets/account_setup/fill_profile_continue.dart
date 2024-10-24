import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';

class FillProfileContinue extends StatelessWidget {
  const FillProfileContinue({super.key});

  @override
  Widget build(BuildContext context) {
    final accountSetupCubit = context.read<AccountSetupCubit>();
    final updateProfileParams = UpdateProfileParams(
      fullName: accountSetupCubit.fullNameController.text.trim(),
      nickName: accountSetupCubit.nickNameController.text.trim(),
      address: accountSetupCubit.addressController.text,
      phone: accountSetupCubit.phoneNumber,
      gender: accountSetupCubit.genderController.text,
    );
    return PrimaryButton(
      margin: AppConstants.screenHorizontalPadding.add(
        EdgeInsets.symmetric(vertical: 40.h),
      ),
      onPressed: () => accountSetupCubit.continueToSetFingerprint(
        () => context.pushRoute(
          SetFingerprintRoute(updateProfileParams: updateProfileParams),
        ),
      ),
      text: AppStrings.continueWord,
    );
  }
}

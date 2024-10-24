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
    // return BlocListener<SetFingerprintCubit, AccountSetupState>(
    // listenWhen: (_, current) =>
    //     current.status == SetFingerprintStateStatus.updateProfileLoading ||
    //     current.status == SetFingerprintStateStatus.updateProfileSuccess ||
    //     current.status == SetFingerprintStateStatus.updateProfileError,
    // listener: (context, state) {
    //   switch (state.status) {
    //     case SetFingerprintStateStatus.updateProfileLoading:
    //       context.unfocusKeyboard();
    //       context.showLoadingDialog();
    //       break;
    //     // return;
    //     case SetFingerprintStateStatus.updateProfileSuccess:
    //       context.popTop();
    //       // TODO: navigate to home
    //       break;
    //     case SetFingerprintStateStatus.updateProfileError:
    //       context.popTop();
    //       context.showErrorDialog(state.error!);
    //       break;
    //     default:
    //       return;
    //   }
    // },
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
        context,
        updateProfileParams: updateProfileParams,
      ),
      text: AppStrings.continueWord,
    );
  }
}

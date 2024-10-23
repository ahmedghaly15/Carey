import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_state.dart';

class FillProfileContinueBlocListener extends StatelessWidget {
  const FillProfileContinueBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountSetupCubit, AccountSetupState>(
      listenWhen: (_, current) =>
          current.status == AccountSetupStateStatus.updateProfileLoading ||
          current.status == AccountSetupStateStatus.updateProfileSuccess ||
          current.status == AccountSetupStateStatus.updateProfileError,
      listener: (context, state) {
        switch (state.status) {
          case AccountSetupStateStatus.updateProfileLoading:
            context.unfocusKeyboard();
            context.showLoadingDialog();
            break;
          // return;
          case AccountSetupStateStatus.updateProfileSuccess:
            context.popTop();
            // TODO: navigate to home
            break;
          case AccountSetupStateStatus.updateProfileError:
            context.popTop();
            context.showErrorDialog(state.error!);
            break;
          default:
            return;
        }
      },
      child: PrimaryButton(
        margin: AppConstants.screenHorizontalPadding.add(
          EdgeInsets.symmetric(vertical: 40.h),
        ),
        onPressed: () {
          context.read<AccountSetupCubit>().validateFormAndUpdateProfile();
        },
        text: AppStrings.continueWord,
      ),
    );
  }
}

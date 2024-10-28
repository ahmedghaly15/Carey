import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';

class FillProfileContinue extends StatelessWidget {
  const FillProfileContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      margin: AppConstants.screenHorizontalPadding.add(
        EdgeInsets.symmetric(vertical: 40.h),
      ),
      onPressed: () =>
          context.read<AccountSetupCubit>().continueToSetFingerprint(context),
      text: AppStrings.continueWord,
    );
  }
}

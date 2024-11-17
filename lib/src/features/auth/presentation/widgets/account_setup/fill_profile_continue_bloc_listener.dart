import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
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
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) async => await _listener(state, context),
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

  Future<void> _listener(AccountSetupState state, BuildContext context) async {
    switch (state.status) {
      case AccountSetupStateStatus.updateProfileLoading:
        _handleUpdateProfileLoading(context);
        break;
      case AccountSetupStateStatus.updateProfileSuccess:
        await _handleUpdateProfileSuccess(state, context);
        break;
      case AccountSetupStateStatus.updateProfileError:
        _handleUpdateProfileError(context, state);
        break;
      case AccountSetupStateStatus.updateProfileImgError:
        _handleUpdateProfileError(context, state);
        break;
      default:
        break;
    }
  }

  void _handleUpdateProfileError(
      BuildContext context, AccountSetupState state) {
    context.popTop();
    context.showErrorDialog(state.error!);
  }

  void _handleUpdateProfileLoading(BuildContext context) {
    context.unfocusKeyboard();
    context.showLoadingDialog();
  }

  Future<void> _handleUpdateProfileSuccess(
    AccountSetupState state,
    BuildContext context,
  ) async {
    final accountSetupCubit = context.read<AccountSetupCubit>();
    if (state.pickedProfileImg != null) {
      await accountSetupCubit.updateProfileImg();
    }
    context.popTop();
    final updateProfileParams = UpdateProfileParams(
      fullName: accountSetupCubit.fullNameController.text,
      nickName: accountSetupCubit.nickNameController.text,
      gender: accountSetupCubit.genderController.text,
      address: accountSetupCubit.addressController.text,
      phone: accountSetupCubit.phoneNumber,
    );
    context.pushRoute(
      SetFingerprintRoute(updateProfileParams: updateProfileParams),
    );
  }

  bool _listenWhen(AccountSetupStateStatus currentStatus) {
    return currentStatus == AccountSetupStateStatus.updateProfileLoading ||
        currentStatus == AccountSetupStateStatus.updateProfileSuccess ||
        currentStatus == AccountSetupStateStatus.updateProfileError ||
        currentStatus == AccountSetupStateStatus.updateProfileImgError;
  }
}
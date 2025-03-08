import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterButtonBlocListener extends StatelessWidget {
  const RegisterButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        onPressed: () =>
            context.read<RegisterCubit>().validateFormAndRegister(),
        text: AppStrings.signUp,
      ),
    );
  }

  bool _listenWhen(RegisterStateStatus status) {
    return status == RegisterStateStatus.registerLoading ||
        status == RegisterStateStatus.registerError ||
        status == RegisterStateStatus.registerSuccess;
  }

  void _listener(RegisterState state, BuildContext context) {
    switch (state.status) {
      case RegisterStateStatus.registerLoading:
        context.unfocusKeyboard();
        context.showLoadingDialog();
        break;
      case RegisterStateStatus.registerSuccess:
        context.popTop();
        context.showResultDialog(
          contentText: AppStrings.accountCreatedSuccessfully,
        );
        break;
      case RegisterStateStatus.registerError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;
      default:
        break;
    }
  }
}

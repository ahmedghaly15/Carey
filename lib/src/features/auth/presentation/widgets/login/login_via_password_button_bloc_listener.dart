import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:carey/src/core/datasources/user_local_data_source.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginViaPasswordButtonBlocListener extends StatelessWidget {
  const LoginViaPasswordButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      child: PrimaryButton(
        onPressed: () => context.read<LoginCubit>().validateFormAndLogin(),
        text: AppStrings.signIn,
      ),
    );
  }

  bool _listenWhen(LoginStateStatus status) {
    return status == LoginStateStatus.loginViaPasswordLoading ||
        status == LoginStateStatus.loginViaPasswordError ||
        status == LoginStateStatus.loginViaPasswordSuccess;
  }

  void _listener(LoginState state, BuildContext context) async {
    switch (state.status) {
      case LoginStateStatus.loginViaPasswordLoading:
        context.unfocusKeyboard();
        context.showLoadingDialog();
        break;
      case LoginStateStatus.loginViaPasswordSuccess:
        context.popTop();
        await _rememberMeAndSecureUserData(context, state.authEntity!);
        // Either Home screen or AccountSetup screen
        _goNextView(state.authEntity!.user.fullName, context);
        break;
      case LoginStateStatus.loginViaPasswordError:
        context.popTop();
        context.showErrorDialog(state.error!);
        break;
      default:
        break;
    }
  }

  Future<void> _rememberMeAndSecureUserData(
    BuildContext context,
    AuthResponseEntity authEntity,
  ) async {
    await context.read<LoginCubit>().handleRememberingEmailAndPassword();
    await UserLocalDatasource.setAndSecureUserDataAndSetTokenIntoHeaders(
      authEntity,
    );
  }

  void _goNextView(String? fullName, BuildContext context) {
    if (fullName.isNullOrEmpty) {
      // User hasn't filled his profile before
      context.replaceRoute(const AccountSetupRoute());
    } else {
      // User has filled his profile before
      context.replaceRoute(const LayoutRoute());
    }
  }
}

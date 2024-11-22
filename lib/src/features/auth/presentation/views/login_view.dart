import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/widgets/arrow_back_icon_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/login_view_body.dart';

@RoutePage()
class LoginView extends StatelessWidget implements AutoRouteWrapper {
  const LoginView({super.key, this.isPushedFromRegister = false});

  final bool isPushedFromRegister;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>.value(
          value: getIt.get<LoginCubit>(),
        ),
        BlocProvider<AuthFormCubit>.value(
          value: getIt.get<AuthFormCubit>()
            ..assignRememberedEmailAndPass()
            ..initRememberMe(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.router.canPop()
          ? AppBar(
              leading: const ArrowBackIconButton(),
            )
          : null,
      body: SafeArea(
        child: LoginViewBody(isPushedFromRegister: isPushedFromRegister),
      ),
    );
  }
}

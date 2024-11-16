import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/widgets/arrow_back_icon_button.dart';
import 'package:carey/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/register/register_view_body.dart';

@RoutePage()
class RegisterView extends StatelessWidget implements AutoRouteWrapper {
  const RegisterView({super.key, this.isPushedFromLogin = true});

  final bool isPushedFromLogin;

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthFormCubit>.value(
          value: getIt.get<AuthFormCubit>(),
        ),
        BlocProvider<RegisterCubit>.value(
          value: getIt.get<RegisterCubit>(),
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
        child: RegisterViewBody(isPushedFromLogin: isPushedFromLogin),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/login/login_view_body.dart';

@RoutePage()
class LoginView extends StatelessWidget implements AutoRouteWrapper {
  const LoginView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (_) => getIt.get<LoginCubit>(),
        ),
        BlocProvider<FormAttributesCubit>(
          create: (_) => getIt.get<FormAttributesCubit>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}

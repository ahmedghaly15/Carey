import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/widgets/animated_loading_indicator.dart';
import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/forgot_password_view_body.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ForgotPasswordView({super.key, required this.email});

  final String email;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (_) => getIt.get<ForgotPasswordCubit>()..getAccountByEmail(email),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
        buildWhen: (_, current) => _buildWhen(current),
        builder: (context, state) {
          switch (state.status) {
            case ForgotPasswordStateStatus.getAccountByEmailLoading:
              return const Center(child: AnimatedLoadingIndicator());
            case ForgotPasswordStateStatus.getAccountByEmailSuccess:
              return const ForgotPasswordViewBody();
            case ForgotPasswordStateStatus.getAccountByEmailError:
              return CustomErrorWidget(
                error: state.error!,
                tryAgainOnPressed: () => context
                    .read<ForgotPasswordCubit>()
                    .getAccountByEmail(email),
              );
            default:
              return const Center(child: AnimatedLoadingIndicator());
          }
        },
      ),
    );
  }

  bool _buildWhen(ForgotPasswordState current) {
    return current.status ==
            ForgotPasswordStateStatus.getAccountByEmailLoading ||
        current.status == ForgotPasswordStateStatus.getAccountByEmailSuccess ||
        current.status == ForgotPasswordStateStatus.getAccountByEmailError;
  }
}

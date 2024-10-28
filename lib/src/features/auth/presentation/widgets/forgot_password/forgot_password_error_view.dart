import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordErrorView extends StatelessWidget {
  const ForgotPasswordErrorView({
    super.key,
    required this.email,
    required this.error,
  });

  final String email, error;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(titleText: AppStrings.forgotPassword),
        SliverFillRemaining(
          hasScrollBody: false,
          child: CustomErrorWidget(
            error: error,
            tryAgainOnPressed: () =>
                context.read<ForgotPasswordCubit>().getAccountByEmail(email),
          ),
        ),
      ],
    );
  }
}

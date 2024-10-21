import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/widgets/remember_me.dart';
import 'package:carey/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:carey/src/features/login/presentation/cubit/login_state.dart';

class LoginRememberMeBlocBuilder extends StatelessWidget {
  const LoginRememberMeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (_, current) => current is ToggleRememberMe,
      builder: (_, __) => RememberMe(
        value: loginCubit.rememberMe,
        onChanged: (_) => loginCubit.toggleRememberMe(),
      ),
    );
  }
}

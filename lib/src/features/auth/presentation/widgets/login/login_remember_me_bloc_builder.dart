import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginRememberMeBlocBuilder extends StatelessWidget {
  const LoginRememberMeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (_, current) => current is ToggleRememberMe,
      builder: (_, __) => RememberMeCheckBox(
        value: loginCubit.rememberMe,
        onChanged: (_) => loginCubit.toggleRememberMe(),
      ),
    );
  }
}

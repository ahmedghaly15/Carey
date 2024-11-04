import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/reset_pass/reset_pass_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPassRememberMeBlocSelector extends StatelessWidget {
  const ResetPassRememberMeBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ResetPassCubit, ResetPassState, bool>(
      selector: (state) => state.rememberMe,
      builder: (context, state) => RememberMeCheckBox(
        value: state,
        onChanged: (_) => context.read<ResetPassCubit>().toggleRememberMe(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form/auth_form_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box.dart';

class AuthRememberMeBlocSelector extends StatelessWidget {
  const AuthRememberMeBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 19.h),
      child: BlocSelector<AuthFormCubit, AuthFormState, bool>(
        selector: (state) => state.rememberMe,
        builder: (context, rememberMe) => RememberMeCheckBox(
          value: rememberMe,
          onChanged: (_) => context.read<AuthFormCubit>().toggleRememberMe(),
        ),
      ),
    );
  }
}

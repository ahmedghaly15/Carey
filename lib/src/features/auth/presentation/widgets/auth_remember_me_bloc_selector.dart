import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box.dart';

class AuthRememberMeBlocSelector extends StatelessWidget {
  const AuthRememberMeBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 19.h),
      child: BlocSelector<FormAttributesCubit, FormAttributesState, bool>(
        selector: (state) => state.rememberMe,
        builder: (context, rememberMe) => RememberMeCheckBox(
          value: rememberMe,
          onChanged: (_) =>
              context.read<FormAttributesCubit>().toggleRememberMe(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/auth_form_attributes/form_attributes_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/remember_me_check_box.dart';

class RememberMeBlocBuilder extends StatelessWidget {
  const RememberMeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 19.h),
      child: BlocBuilder<FormAttributesCubit, FormAttributesState>(
        buildWhen: (previous, current) =>
            previous.rememberMe != current.rememberMe,
        builder: (context, state) => RememberMeCheckBox(
          value: state.rememberMe,
          onChanged: (_) =>
              context.read<FormAttributesCubit>().toggleRememberMe(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class RememberMeCheckBoxBlocSelector<C extends Cubit<S>, S>
    extends StatelessWidget {
  const RememberMeCheckBoxBlocSelector({
    super.key,
    required this.selector,
    required this.onChanged,
  });

  final bool Function(S state) selector;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocSelector<C, S, bool>(
          selector: selector,
          builder: (_, rememberMe) => Transform.scale(
            scale: 1.5,
            child: Checkbox.adaptive(
              value: rememberMe,
              activeColor: Colors.black,
              onChanged: onChanged,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0.r),
              ),
            ),
          ),
        ),
        Text(
          AppStrings.rememberMe,
          style: AppTextStyles.font15Regular,
        ),
      ],
    );
  }
}

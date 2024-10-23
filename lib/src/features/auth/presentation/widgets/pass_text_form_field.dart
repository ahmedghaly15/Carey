import 'package:carey/src/core/helpers/text_form_validator.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PassTextFormField extends StatelessWidget {
  const PassTextFormField({
    super.key,
    required this.obscureText,
    this.controller,
    this.focusNode,
    this.passVisibilityOnTap,
  });

  final bool obscureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? passVisibilityOnTap;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      hintText: AppStrings.password,
      autofillHints: const [AutofillHints.password],
      obscureText: obscureText,
      prefixSvgIcon: Assets.svgsLockIcon,
      suffixIcon: IconButton(
        onPressed: passVisibilityOnTap,
        icon: Icon(
          obscureText
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: AppColors.primaryColor.withOpacity(0.7),
        ),
      ),
      validate: (String? value) =>
          TextFormValidator.validatePasswordField(value),
    );
  }
}

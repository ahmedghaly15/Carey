import 'package:carey/src/core/helpers/auth_validator.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.passFocusNode,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? passFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.emailAddress,
      hintText: AppStrings.email,
      autofillHints: const [AutofillHints.email],
      prefixSvgIcon: Assets.svgsEmailIcon,
      onEditingComplete: () => context.requestFocus(passFocusNode!),
      validate: (String? value) => AuthValidator.validateEmailField(value),
    );
  }
}

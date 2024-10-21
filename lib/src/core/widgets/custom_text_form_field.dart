import 'dart:ui';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validate,
    this.onChanged,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.autofillHints,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
    this.contentPadding,
    this.textAlign = TextAlign.start,
    this.enabledBorder,
    this.focusedBorder,
    this.enabled,
    this.margin,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
    this.hintStyle,
    this.disabledBorder,
    this.autofocus = false,
    this.onSaved,
    this.maxLength,
  });

  final TextInputType keyboardType;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String submittedText)? onSubmit;
  final List<String>? autofillHints;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final TextCapitalization textCapitalization;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final bool? enabled;
  final EdgeInsetsGeometry? margin;
  final bool autofocus;
  final Function(String? value)? onSaved;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      enabled: enabled,
      selectionHeightStyle: BoxHeightStyle.strut,
      obscureText: obscureText ?? false,
      autofillHints: autofillHints,
      validator: validate,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      maxLength: maxLength,
      focusNode: focusNode,
      keyboardType: keyboardType,
      cursorColor: AppColors.primaryColor,
      textCapitalization: textCapitalization,
      textAlign: textAlign,
      style: AppTextStyles.font13Regular,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      cursorErrorColor: Colors.white,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding:
            contentPadding ?? EdgeInsets.symmetric(horizontal: 12.w),
        disabledBorder: disabledBorder ?? _outlineInputBorder,
        enabledBorder: enabledBorder ?? _outlineInputBorder,
        focusedBorder: focusedBorder ?? _outlineInputBorder,
        focusedErrorBorder: focusedErrorBorder ?? _outlineInputBorder,
        errorBorder: errorBorder ?? _outlineInputBorder,
        hintText: hintText ?? '',
        hintStyle: hintStyle ??
            AppTextStyles.font13Regular.copyWith(
              color: AppColors.primaryColor.withOpacity(0.25),
            ),
        filled: true,
        fillColor: AppColors.grey.withOpacity(0.25),
        border: border ?? _outlineInputBorder,
      ),
    );
  }

  OutlineInputBorder get _outlineInputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(
          color: AppColors.primaryColor.withOpacity(0.1),
          width: 1.w,
        ),
      );
}

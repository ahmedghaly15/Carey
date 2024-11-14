import 'dart:ui';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    this.prefixSvgIcon,
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
    this.fillColor,
    this.borderRadius = 20,
    this.borderColor,
  });

  final TextInputType keyboardType;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? prefixSvgIcon;
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
  final Color? fillColor;
  final double borderRadius;
  final Color? borderColor;

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
      cursorErrorColor: AppColors.primaryColor,
      textCapitalization: textCapitalization,
      textAlign: textAlign,
      style: AppTextStyles.font13Regular,
      decoration: InputDecoration(
        suffixIconColor: AppColors.primaryColor,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon ??
            (prefixSvgIcon != null
                ? Container(
                    margin: EdgeInsetsDirectional.only(
                      start: 23.w,
                      end: 10.w,
                      top: 22.h,
                      bottom: 22.h,
                    ),
                    child: SvgPicture.asset(
                      prefixSvgIcon!,
                    ),
                  )
                : null),
        contentPadding:
            contentPadding ?? AppConstants.textFormFieldHorizontalPadding,
        disabledBorder: disabledBorder ?? _outlineInputBorder,
        enabledBorder: enabledBorder ?? _outlineInputBorder,
        focusedBorder: focusedBorder ?? _outlineInputBorder,
        focusedErrorBorder: focusedErrorBorder ?? _outlineInputBorder,
        errorBorder: errorBorder ?? _outlineInputBorder,
        border: border ?? _outlineInputBorder,
        hintText: hintText ?? '',
        hintStyle: hintStyle ?? AppTextStyles.hintTextStyle,
        filled: true,
        fillColor: fillColor ?? AppColors.textFormFieldFillColor,
      ),
    );
  }

  OutlineInputBorder get _outlineInputBorder =>
      // ! textFormFieldOutlineBorder saved in AppConstants because it's accessed in
      // ! another type of text fields
      AppConstants.textFormFieldOutlineBorder.copyWith(
        borderRadius: BorderRadius.circular(borderRadius.r),
        borderSide: BorderSide(
          color: borderColor ?? AppColors.primaryColor.withOpacity(0.1),
          width: 1.w,
        ),
      );
}

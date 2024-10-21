import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.boxShadow,
    this.width,
    // this.height,
    this.padding,
    this.border,
    this.isOutlined = false,
    this.fontSize,
    this.margin,
    this.borderColor = AppColors.primaryColor,
    this.borderWidth = 1,
  });

  final String? text;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;
  final List<BoxShadow>? boxShadow;
  final double? width;
  // final double? height;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final bool isOutlined;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w ?? double.infinity,
      // height: height?.h ?? 54.0.h,
      margin: margin ?? EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
        color: isOutlined
            ? Colors.transparent
            : backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadiusDirectional.circular(
          borderRadius?.r ?? 30.0.r,
        ),
        boxShadow: boxShadow,
        border: isOutlined
            ? Border.all(
                color: borderColor,
                width: borderWidth.w,
              )
            : border,
      ),
      child: MaterialButton(
        padding: padding ?? EdgeInsets.symmetric(vertical: 16.h),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius?.r ?? 30.0.r,
          ),
        ),
        child: child ??
            FittedBox(
              child: Text(
                text!,
                style: textStyle ??
                    AppTextStyles.font20SemiBoldWhite.copyWith(
                      fontSize: fontSize?.sp ?? 20.sp,
                      color: isOutlined
                          ? AppColors.primaryColor
                          : textColor ?? Colors.white,
                    ),
              ),
            ),
      ),
    );
  }
}

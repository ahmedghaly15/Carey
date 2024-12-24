import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.isInfinityWidth = true,
    this.text,
    this.child,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.boxShadow,
    this.width,
    this.padding,
    this.border,
    this.isOutlined = false,
    this.fontSize,
    this.margin,
    this.borderColor = AppColors.primaryColor,
    this.borderWidth = 1,
    this.height,
  });

  final bool isInfinityWidth;
  final String? text;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;
  final List<BoxShadow>? boxShadow;
  final double? width, height;
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
      height: height?.h,
      width: width?.w ?? (isInfinityWidth ? double.infinity : null),
      margin: margin,
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
        minWidth: 0,
        child: child ??
            Text(
              text!,
              style: textStyle ??
                  AppTextStyles.font20SemiBoldWhite.copyWith(
                    fontSize: fontSize?.sp ?? 20.sp,
                    color: isOutlined
                        ? AppColors.primaryColor
                        : textColor ?? Colors.white,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
      ),
    );
  }
}

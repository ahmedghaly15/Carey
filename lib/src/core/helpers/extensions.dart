import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/widgets/custom_error_adaptive_dialog.dart';
import 'package:carey/src/core/widgets/loading_adaptive_dialog.dart';
import 'package:carey/src/core/widgets/result_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension MediaQueryUtils on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension RequestFocusOnFocusNode on BuildContext {
  void requestFocus(FocusNode node) => FocusScope.of(this).requestFocus(node);
}

extension UnfocusKeyboard on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension ShowLoadingDialog on BuildContext {
  Future<void> showLoadingDialog() async => await showDialog<void>(
        context: this,
        barrierDismissible: false,
        builder: (_) => const LoadingAdaptiveDialog(),
      );
}

extension ShowErrorDialog on BuildContext {
  Future<void> showErrorDialog(String error) async => await showDialog<void>(
        context: this,
        barrierDismissible: true,
        builder: (_) => CustomErrorAdaptiveDialog(error: error),
      );
}

extension PopTopMostRoute on BuildContext {
  void popTop() => Navigator.of(this, rootNavigator: true).pop();
}

extension IsNullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get isNullOrEmpty => this == null || this == '';
}

extension ShowResultDialog on BuildContext {
  Future<void> showResultDialog({
    String? titleText,
    Widget? titleWidget,
    String? contentText,
    Widget? content,
    List<Widget>? actions,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry actionsPadding = EdgeInsets.zero,
    bool hasOkButtonInActions = true,
    bool barrierDismissible = true,
    Widget? dialog,
    VoidCallback? okButtonOnPressed,
  }) async =>
      await showDialog<void>(
        context: this,
        barrierDismissible: barrierDismissible,
        builder: (_) =>
            dialog ??
            ResultDialog(
              okButtonOnPressed: okButtonOnPressed,
              titleText: titleText,
              titleWidget: titleWidget,
              contentText: contentText,
              content: content,
              contentPadding: contentPadding,
              actions: actions,
              hasOkButtonInActions: hasOkButtonInActions,
              actionsPadding: actionsPadding,
            ),
      );
}

extension ShowMyToast on BuildContext {
  void showToast(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black54,
          elevation: 0,
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.startToEnd,
          behavior: SnackBarBehavior.floating,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
          ),
          content: Row(
            spacing: 8.w,
            children: [
              Image.asset(Assets.careyIcon, height: 32.h, width: 32.h),
              Expanded(
                child: Text(
                  message,
                  style:
                      AppTextStyles.font15Regular.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      );
}

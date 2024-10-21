import 'package:carey/src/core/widgets/custom_error_adaptive_dialog.dart';
import 'package:carey/src/core/widgets/loading_adaptive_dialog.dart';
import 'package:flutter/material.dart';

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

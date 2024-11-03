import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

enum ToastType { success, info, error, warning }

class CustomToast {
  static const Position _toastPosition = Position.bottom;
  static const Duration _toastDuration = Duration(seconds: 2);
  static const Duration _animationDuration = Duration(milliseconds: 675);
  static const Cubic _animationCurve = Curves.fastLinearToSlowEaseIn;
  static const AnimationType _animationType = AnimationType.fromLeft;

  static void show(
    BuildContext context, {
    required ToastType type,
    required String title,
    String? description,
  }) {
    switch (type) {
      case ToastType.success:
        CherryToast.success(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          description: description != null
              ? Text(description, style: const TextStyle(color: Colors.white70))
              : null,
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.green.shade600,
          iconWidget: const Icon(Icons.check_circle, color: Colors.white),
        ).show(context);

      case ToastType.info:
        CherryToast.info(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          description: description != null
              ? Text(description, style: const TextStyle(color: Colors.white70))
              : null,
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.blue.shade600,
          iconWidget: const Icon(Icons.info, color: Colors.white),
        ).show(context);

      case ToastType.error:
        CherryToast.error(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          description: description != null
              ? Text(description, style: const TextStyle(color: Colors.white70))
              : null,
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.red.shade600,
          iconWidget: const Icon(Icons.error, color: Colors.white),
        ).show(context);

      case ToastType.warning:
        CherryToast.warning(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          description: description != null
              ? Text(description, style: const TextStyle(color: Colors.white70))
              : null,
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.orange.shade600,
          iconWidget: const Icon(Icons.warning, color: Colors.white),
        ).show(context);
    }
  }
}

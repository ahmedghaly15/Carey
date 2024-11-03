import 'package:carey/src/core/utils/app_strings.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

enum CustomToastType { success, info, error, warning }

class CustomToast {
  static const Position _toastPosition = Position.bottom;
  static const Duration _toastDuration = Duration(seconds: 4);
  static const Duration _animationDuration = Duration(milliseconds: 675);
  static const Cubic _animationCurve = Curves.fastLinearToSlowEaseIn;
  static const AnimationType _animationType = AnimationType.fromLeft;
  static const Color _iconColor = Colors.white;

  static void show(
    BuildContext context, {
    required CustomToastType type,
    required String description,
  }) {
    switch (type) {
      case CustomToastType.success:
        CherryToast.success(
          title: _buildTitleTextWidget(type),
          description: _buildDescriptionTextWidget(description),
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.green.shade600,
          iconWidget: const Icon(Icons.check_circle, color: _iconColor),
        ).show(context);

      case CustomToastType.info:
        CherryToast.info(
          title: _buildTitleTextWidget(type),
          description: _buildDescriptionTextWidget(description),
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.blue.shade600,
          iconWidget: const Icon(Icons.info, color: _iconColor),
        ).show(context);

      case CustomToastType.error:
        CherryToast.error(
          title: _buildTitleTextWidget(type),
          description: _buildDescriptionTextWidget(description),
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.red.shade600,
          iconWidget: const Icon(Icons.error, color: _iconColor),
        ).show(context);

      case CustomToastType.warning:
        CherryToast.warning(
          title: _buildTitleTextWidget(type),
          description: _buildDescriptionTextWidget(description),
          toastPosition: _toastPosition,
          animationDuration: _animationDuration,
          animationCurve: _animationCurve,
          animationType: _animationType,
          toastDuration: _toastDuration,
          backgroundColor: Colors.orange.shade600,
          iconWidget: const Icon(Icons.warning, color: _iconColor),
        ).show(context);
    }
  }

  static Text _buildTitleTextWidget(CustomToastType type) {
    return Text(
      _buildTitleText(type),
      style: const TextStyle(color: Colors.white),
    );
  }

  static String _buildTitleText(CustomToastType type) {
    switch (type) {
      case CustomToastType.info:
        return AppStrings.info;

      case CustomToastType.success:
        return AppStrings.success;

      case CustomToastType.error:
        return AppStrings.somethingWentWrong;

      case CustomToastType.warning:
        return AppStrings.warning;

      default:
        return AppStrings.info;
    }
  }

  static Text _buildDescriptionTextWidget(String description) {
    return Text(
      description,
      style: const TextStyle(color: Colors.white70),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carey/src/core/themes/app_colors.dart';

class CustomNavigationDestination extends StatelessWidget {
  final IconData icon, selectedIcon;
  final String label;

  const CustomNavigationDestination({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(
        icon,
        color: AppColors.primaryColor.withAlpha(179),
      ),
      selectedIcon: Icon(
        selectedIcon,
        color: AppColors.primaryColor,
      ),
      label: label,
    );
  }
}

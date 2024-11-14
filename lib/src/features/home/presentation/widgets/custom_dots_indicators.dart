import 'package:carey/src/features/home/presentation/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicators extends StatelessWidget {
  const CustomDotsIndicators({
    super.key,
    required this.currentPageIndex,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}

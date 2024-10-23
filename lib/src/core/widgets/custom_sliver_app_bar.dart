import 'package:flutter/material.dart';

import 'package:carey/src/core/widgets/arrow_back_icon_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.titleText,
    this.actions,
    this.titleWidget,
    this.leading,
    this.hasLeading = true,
  });

  final String? titleText;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;
  final bool hasLeading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: titleWidget ?? Text(titleText ?? ''),
      leading: hasLeading ? leading ?? const ArrowBackIconButton() : null,
      actions: actions,
    );
  }
}

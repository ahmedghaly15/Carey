import 'package:flutter/material.dart';

extension MediaQueryUtils on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension RequestFocusOnFocusNode on BuildContext {
  void requestFocus(FocusNode node) => FocusScope.of(this).requestFocus(node);
}

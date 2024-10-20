import 'package:carey/src/carey_app.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(const CareyApp());
}

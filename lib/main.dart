import 'package:carey/src/carey_app.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/helpers/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  Bloc.observer = MyBlocObserver();
  runApp(const CareyApp());
}

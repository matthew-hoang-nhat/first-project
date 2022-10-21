import 'package:first_project/src/config/routes/app_routers.dart';
import 'package:first_project/src/utils/app_variable.dart';
import 'package:flutter/material.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  _locator();
}

void _locator() {
  getIt.registerSingleton(const AppRouter());
}

import 'package:flutter/material.dart';


import 'src/app.dart';
import 'src/config/config.dart';

final themeController = ThemeController(ThemeService());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await themeController.loadTheme();

  runApp(const MyApp());
}

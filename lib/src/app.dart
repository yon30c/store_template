

import 'package:flutter/material.dart';
import 'package:store_template/main.dart';
import 'config/config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, child) => MaterialApp.router(
        title: 'Material App',
        theme: AppTheme().getTheme(),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
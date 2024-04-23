import 'package:flutter/material.dart';
import 'package:forms_app/router/ruter.dart';
//import 'package:forms_app/screens/home_screen.dart';
import 'package:forms_app/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
      //  home: HomeScreen(),
    );
  }
}

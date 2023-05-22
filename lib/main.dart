import 'package:clube_ldv/routes/app_router.dart';
import 'package:clube_ldv/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clube LDV',
      theme: appTheme,
      themeMode: ThemeMode.light,
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
    );
  }
}

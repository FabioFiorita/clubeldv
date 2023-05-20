import 'package:clube_ldv/routes/app_router.dart';
import 'package:clube_ldv/screens/onboarding_page.dart';
import 'package:clube_ldv/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clube LDV',
      theme: appTheme,
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.system,
      routerConfig: AppRouter().router,
    );
  }
}

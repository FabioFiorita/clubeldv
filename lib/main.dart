import 'package:clubeldv/logs/provider_logger.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:clubeldv/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'logs/router_logger.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(observers: [ProviderLogger()], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clube LDV',
      theme: appTheme,
      darkTheme: darkAppTheme,
      themeMode: ThemeMode.light,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [RouterLogger()],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

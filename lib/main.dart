import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clube_ldv/logs/provider_logger.dart';
import 'package:clube_ldv/repository/discount_repository.dart';
import 'package:clube_ldv/routes/app_router.dart';
import 'package:clube_ldv/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'logs/router_logger.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await DiscountRepository(FirebaseFirestore.instance).getAll();
  runApp(ProviderScope(observers: [ProviderLogger()],child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clube LDV',
      theme: appTheme,
      themeMode: ThemeMode.light,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [RouterLogger()],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

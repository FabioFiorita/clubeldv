import 'package:clube_ldv/screens/home_page.dart';
import 'package:clube_ldv/screens/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const OnboardingPage(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        )
      ],
      debugLogDiagnostics: true,
    );
  }
}
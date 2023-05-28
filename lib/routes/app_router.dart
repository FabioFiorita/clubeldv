import 'package:auto_route/auto_route.dart';

import '../screens/home_page.dart';
import '../screens/onboarding_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
      initial: true,
    ),
  ];
}

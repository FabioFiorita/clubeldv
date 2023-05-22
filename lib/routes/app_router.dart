import 'package:clube_ldv/screens/category_discount_page.dart';
import 'package:clube_ldv/screens/discount_page.dart';
import 'package:clube_ldv/screens/home_page.dart';
import 'package:clube_ldv/screens/onboarding_page.dart';
import 'package:clube_ldv/screens/search_page.dart';
import 'package:clube_ldv/service/discount_service.dart';
import 'package:go_router/go_router.dart';

import '../model/discount.dart';
import '../screens/category_list_page.dart';
import '../screens/discount_list_page.dart';
import '../service/category_service.dart';

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
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/categories',
          builder: (context, state) => const CategoryListPage(),
        ),
        GoRoute(
          path: '/discounts',
          builder: (context, state) => const DiscountListPage(),
        ),
        GoRoute(
          path: '/category/:id',
          builder: (context, state) {
            final categoryId = state.pathParameters['id']!;
            final category = CategoryService().getFromId(int.parse(categoryId));
            return CategoryDiscountPage(category: category);
          },
        ),
        GoRoute(
          path: '/discount/:id',
          builder: (context, state) {
            final discountId = state.pathParameters['id']!;
            final Discount discount = DiscountService().getFromId(int.parse(discountId));
            return DiscountPage(discount: discount);
          },
        )
      ],
      debugLogDiagnostics: true,
    );
  }
}

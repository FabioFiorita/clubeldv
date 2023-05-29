import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';
import '../model/discount.dart';
import '../screens/categories_page.dart';
import '../screens/category_discount_list_page.dart';
import '../screens/discount_list_page.dart';
import '../screens/discount_page.dart';
import '../screens/home_page.dart';
import '../screens/info_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: InfoRoute.page,
      path: '/info',
    ),
    AutoRoute(
      page: CategoriesRoute.page,
      path: '/categorias',
    ),
    AutoRoute(
      page: CategoryDiscountListRoute.page,
      path: '/categorias/:category',
    ),
    AutoRoute(
      page: DiscountListRoute.page,
      path: '/descontos',
    ),
    AutoRoute(
      page: DiscountRoute.page,
      path: '/descontos/:discount',
    )
  ];
}

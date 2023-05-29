// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DiscountListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscountListPage(),
      );
    },
    DiscountRoute.name: (routeData) {
      final args = routeData.argsAs<DiscountRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscountPage(
          key: args.key,
          discount: args.discount,
        ),
      );
    },
    CategoryDiscountListRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDiscountListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryDiscountListPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [DiscountListPage]
class DiscountListRoute extends PageRouteInfo<void> {
  const DiscountListRoute({List<PageRouteInfo>? children})
      : super(
          DiscountListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscountListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiscountPage]
class DiscountRoute extends PageRouteInfo<DiscountRouteArgs> {
  DiscountRoute({
    Key? key,
    required Discount discount,
    List<PageRouteInfo>? children,
  }) : super(
          DiscountRoute.name,
          args: DiscountRouteArgs(
            key: key,
            discount: discount,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static const PageInfo<DiscountRouteArgs> page =
      PageInfo<DiscountRouteArgs>(name);
}

class DiscountRouteArgs {
  const DiscountRouteArgs({
    this.key,
    required this.discount,
  });

  final Key? key;

  final Discount discount;

  @override
  String toString() {
    return 'DiscountRouteArgs{key: $key, discount: $discount}';
  }
}

/// generated route for
/// [CategoryDiscountListPage]
class CategoryDiscountListRoute
    extends PageRouteInfo<CategoryDiscountListRouteArgs> {
  CategoryDiscountListRoute({
    Key? key,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryDiscountListRoute.name,
          args: CategoryDiscountListRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDiscountListRoute';

  static const PageInfo<CategoryDiscountListRouteArgs> page =
      PageInfo<CategoryDiscountListRouteArgs>(name);
}

class CategoryDiscountListRouteArgs {
  const CategoryDiscountListRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final Category category;

  @override
  String toString() {
    return 'CategoryDiscountListRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

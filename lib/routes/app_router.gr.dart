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
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DiscountRouteArgs>(
          orElse: () =>
              DiscountRouteArgs(discountId: pathParams.getString('discount')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscountPage(
          key: args.key,
          discountId: args.discountId,
        ),
      );
    },
    CategoryDiscountListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CategoryDiscountListRouteArgs>(
          orElse: () => CategoryDiscountListRouteArgs(
              categoryId: pathParams.getString('category')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryDiscountListPage(
          key: args.key,
          categoryId: args.categoryId,
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
    EmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyPage(),
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
    required String discountId,
    List<PageRouteInfo>? children,
  }) : super(
          DiscountRoute.name,
          args: DiscountRouteArgs(
            key: key,
            discountId: discountId,
          ),
          rawPathParams: {'discount': discountId},
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static const PageInfo<DiscountRouteArgs> page =
      PageInfo<DiscountRouteArgs>(name);
}

class DiscountRouteArgs {
  const DiscountRouteArgs({
    this.key,
    required this.discountId,
  });

  final Key? key;

  final String discountId;

  @override
  String toString() {
    return 'DiscountRouteArgs{key: $key, discountId: $discountId}';
  }
}

/// generated route for
/// [CategoryDiscountListPage]
class CategoryDiscountListRoute
    extends PageRouteInfo<CategoryDiscountListRouteArgs> {
  CategoryDiscountListRoute({
    Key? key,
    required String categoryId,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryDiscountListRoute.name,
          args: CategoryDiscountListRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          rawPathParams: {'category': categoryId},
          initialChildren: children,
        );

  static const String name = 'CategoryDiscountListRoute';

  static const PageInfo<CategoryDiscountListRouteArgs> page =
      PageInfo<CategoryDiscountListRouteArgs>(name);
}

class CategoryDiscountListRouteArgs {
  const CategoryDiscountListRouteArgs({
    this.key,
    required this.categoryId,
  });

  final Key? key;

  final String categoryId;

  @override
  String toString() {
    return 'CategoryDiscountListRouteArgs{key: $key, categoryId: $categoryId}';
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

/// generated route for
/// [EmptyPage]
class EmptyRoute extends PageRouteInfo<void> {
  const EmptyRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/components/category_card.dart';
import 'package:clubeldv/components/simple_discount_card.dart';
import 'package:clubeldv/screens/error_page.dart';
import 'package:clubeldv/screens/loading_page.dart';
import 'package:clubeldv/state/discount_providers.dart';
import 'package:clubeldv/utils/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/starred_discount_card.dart';
import '../routes/app_router.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDiscounts = ref.watch(discountsProvider);
    return asyncDiscounts.when(
        data: (discounts) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Lugares do Vale",
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.navigateTo(const InfoRoute());
                    },
                    icon: const Icon(Icons.info_rounded),
                  ),
                ],
              ),
              body: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: StarredDiscountCard(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Categorias",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.pushRoute(const CategoriesRoute());
                            },
                            child: const Text("Ver todas"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Create a Sliver horizontal list
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoryCard(category: categories[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Descontos",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              context.navigateTo(const DiscountListRoute());
                            },
                            child: const Text("Ver todos"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: SimpleDiscountCard(
                            discount: discounts[index],
                          ),
                        );
                      },
                      childCount:
                          (discounts.length > 10) ? 10 : discounts.length,
                    ),
                  )
                ],
              ),
            ),
        loading: () => const LoadingPage(),
        error: (error, stack) => const ErrorPage());
  }
}

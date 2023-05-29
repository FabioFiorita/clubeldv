import 'package:auto_route/auto_route.dart';
import 'package:clube_ldv/components/discount_list_tile.dart';
import 'package:clube_ldv/model/category.dart';
import 'package:clube_ldv/screens/error_page.dart';
import 'package:clube_ldv/screens/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/discount_providers.dart';

@RoutePage()
class CategoryDiscountListPage extends ConsumerWidget {
  final Category category;

  const CategoryDiscountListPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCategoryDiscounts =
        ref.watch(discountByCategoryProvider(category: category.name));
    return asyncCategoryDiscounts.when(
      data: (categoryDiscounts) => Scaffold(
        appBar: AppBar(
          title: Text(category.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (categoryDiscounts.isNotEmpty)
              ? ListView.builder(
                  itemCount: categoryDiscounts.length,
                  itemBuilder: (context, index) {
                    return DiscountListTile(
                      discount: categoryDiscounts[index],
                    );
                  },
                )
              : const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("images/waiter.png"),
                      ),
                      Text("Nenhum desconto encontrado"),
                    ],
                  ),
                ),
        ),
      ),
      loading: () => const LoadingPage(),
      error: (error, stack) => const ErrorPage(),
    );
  }
}

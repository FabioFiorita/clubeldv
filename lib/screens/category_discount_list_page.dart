import 'package:auto_route/auto_route.dart';
import 'package:clube_ldv/components/discount_list_tile.dart';
import 'package:clube_ldv/routes/app_router.dart';
import 'package:clube_ldv/screens/error_page.dart';
import 'package:clube_ldv/screens/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/discount_providers.dart';
import '../utils/categories.dart';

@RoutePage()
class CategoryDiscountListPage extends ConsumerWidget {
  final String categoryId;

  const CategoryDiscountListPage({Key? key, @PathParam('category') required this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = categories.firstWhere((element) => element.id == categoryId);
    final asyncCategoryDiscounts =
        ref.watch(discountByCategoryProvider(category: category.id));
    return asyncCategoryDiscounts.when(
      data: (categoryDiscounts) => Scaffold(
        appBar: AppBar(
          title: Text(category.name),
          leading: IconButton(
            onPressed: () {
              context.router.canPop()
                  ? context.router.pop()
                  : context.router.replace(const HomeRoute());
            },
            icon: const Icon(Icons.arrow_back),
          ),
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
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage("assets/images/man.png",),
                        height: 350,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("Nenhum desconto encontrado", style: Theme.of(context).textTheme.bodyLarge,),
                      ),
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

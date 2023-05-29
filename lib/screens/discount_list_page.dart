import 'package:auto_route/auto_route.dart';
import 'package:clube_ldv/screens/error_page.dart';
import 'package:clube_ldv/screens/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/discount_list_tile.dart';
import '../state/discount_providers.dart';

@RoutePage()
class DiscountListPage extends ConsumerWidget {
  const DiscountListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDiscounts = ref.watch(discountsProvider);
    return asyncDiscounts.when(
        data: (discounts) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Descontos",
                ),
                centerTitle: true,
                surfaceTintColor: Colors.red,
              ),
              body: ListView.builder(
                itemCount: discounts.length,
                itemBuilder: (context, index) {
                  return DiscountListTile(
                    discount: discounts[index],
                  );
                },
              ),
            ),
        loading: () => const LoadingPage(),
        error: (error, stack) => const ErrorPage());
  }
}

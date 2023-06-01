import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/screens/error_page.dart';
import 'package:clubeldv/screens/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/discount_list_tile.dart';
import '../model/discount.dart';
import '../routes/app_router.dart';
import '../state/discount_providers.dart';

@RoutePage()
class DiscountListPage extends ConsumerStatefulWidget {
  const DiscountListPage({
    Key? key,
  }) : super(key: key);

  @override
  DiscountListPageState createState() => DiscountListPageState();
}

class DiscountListPageState extends ConsumerState<DiscountListPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  List<Discount> filteredDiscounts = [];

  @override
  Widget build(BuildContext context) {
    final asyncDiscounts = ref.watch(discountsProvider);
    return asyncDiscounts.when(
        data: (discounts) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Descontos",
                ),
                leading: IconButton(
                  onPressed: () {
                    (context.router.canPop())
                        ? context.router.pop()
                        : context.router.replace(const HomeRoute());
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SearchBar(
                        controller: _searchController,
                        hintText: "Pesquisar descontos",
                        onChanged: (value) {
                          _filterSearchDiscounts(value, discounts);
                        },
                        onTap: () {
                          setState(() {
                            _isSearching = true;
                          });
                        },
                        trailing: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                FocusScope.of(context).unfocus();
                              });
                            },
                            icon: const Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                  ),
                  (_isSearching)
                      ? SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 4.0,
                                ),
                                child: DiscountListTile(
                                  discount: filteredDiscounts[index],
                                ),
                              );
                            },
                            childCount: filteredDiscounts.length,
                          ),
                        )
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 4.0,
                                ),
                                child: DiscountListTile(
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

  _filterSearchDiscounts(String query, List<Discount> discounts) {
    setState(() {
      filteredDiscounts = discounts.where((discount) {
        final discountName = discount.name.toLowerCase();
        final companyName = discount.company.name.toLowerCase();
        final searchLower = query.toLowerCase();
        return discountName.contains(searchLower) ||
            companyName.contains(searchLower);
      }).toList();
    });
  }
}

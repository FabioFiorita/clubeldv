import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/components/empty_discount_page.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/screens/error_page.dart';
import 'package:clubeldv/screens/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/discount_list_tile.dart';
import '../components/discount_sort_menu.dart';
import '../model/discount.dart';
import '../routes/app_router.dart';
import '../state/discount_providers.dart';
import '../utils/discount_order.dart';

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
  bool _isAscending = true;
  DiscountOrder _currentOrder = DiscountOrder.category;

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
                actions: [
                  DiscountSortMenu(
                    currentOrder: _currentOrder,
                    isAscending: _isAscending,
                    onChanged: (order, isAscending) {
                      setState(() {
                        _currentOrder = order;
                        _isAscending = isAscending;
                        _sortDiscounts(discounts);
                      });
                    },
                  ),
                ],
              ),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: context.edgeInsets,
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
                      ? (filteredDiscounts.isNotEmpty) ? SliverList(
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
                        ) : const SliverToBoxAdapter(
                    child: EmptyDiscountPage(
                      title: "Procure descontos por nome ou empresa",
                    ),
                  )
                      : (discounts.isNotEmpty) ?SliverList(
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
                        ) : const SliverToBoxAdapter(
                    child: EmptyDiscountPage(
                      title: "Não há descontos no momento",
                    ),
                  ),
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

  _sortDiscounts(List<Discount> discounts) {
    setState(() {
      switch (_currentOrder) {
        case DiscountOrder.alphabetical:
          discounts.sort(
              (a, b) => a.name.compareTo(b.name) * (_isAscending ? 1 : -1));
          break;
        case DiscountOrder.validUntil:
          discounts.sort((a, b) =>
              a.validUntil.compareTo(b.validUntil) * (_isAscending ? 1 : -1));
          break;
        case DiscountOrder.company:
          discounts.sort((a, b) =>
              a.company.name.compareTo(b.company.name) *
              (_isAscending ? 1 : -1));
          break;
        default:
          discounts.sort((a, b) =>
              a.category.compareTo(b.category) * (_isAscending ? 1 : -1));
          break;
      }
    });
  }
}

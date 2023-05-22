import 'package:clube_ldv/components/category_card.dart';
import 'package:clube_ldv/components/home_app_bar.dart';
import 'package:clube_ldv/components/simple_discount_card.dart';
import 'package:clube_ldv/service/discount_service.dart';
import 'package:clube_ldv/utils/categories.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/discount_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DiscountCard(
                discount: DiscountService().getFromId(1),
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
                      "Categorias",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push('/categories');
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
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
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
                      context.push('/discounts');
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
                    bottom: 4.0,
                  ),
                  child: SimpleDiscountCard(title: "Desconto ${index + 1}"),
                );
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

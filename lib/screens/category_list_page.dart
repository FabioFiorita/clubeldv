import 'package:clube_ldv/components/category_card.dart';
import 'package:clube_ldv/components/return_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/categories.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categorias"),
          leading: (context.canPop() == false) ? const ReturnButton() : null,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              return CategoryCard(category: categories[index]);
            },
            itemCount: categories.length,
          ),
        ));
  }
}

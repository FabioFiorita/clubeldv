import 'package:auto_route/auto_route.dart';
import 'package:clube_ldv/utils/categories.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias"),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              categories[index].icon,
              color: categories[index].color,
            ),
            title: Text(categories[index].name),
            onTap: () {
              context.pushRoute(
                CategoryDiscountListRoute(
                  category: categories[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
          onTap: () {
            //context.push('/category/${category.id}');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  category.icon,
                  color: category.color,
                  size: 100,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

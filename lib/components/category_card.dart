import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';
import '../routes/app_router.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: context.circularRadius,
      onTap: () => context.navigateTo(
        CategoryDiscountListRoute(
          categoryId: category.id,
        ),
      ),
      child: Container(
          decoration: BoxDecoration(
            color: context.onPrimaryColor,
            borderRadius: context.circularRadius,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: context.colorScheme.shadow.withOpacity(0.6),
                offset: const Offset(2, 2),
                blurRadius: 6,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: context.circularRadius,
            child: Padding(
              padding: context.edgeInsetsSmall,
              child: Row(
                children: [
                  Icon(
                    category.icon,
                    color: category.color,
                    size: 30,
                    key: const Key('categoryIcon'),
                  ),
                  Padding(
                    padding: context.edgeInsetsSmall,
                    child: Text(
                      category.name,
                      style: context.textTheme.titleLarge,
                      key: const Key('categoryName'),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

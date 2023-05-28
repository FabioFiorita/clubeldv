import 'package:clube_ldv/components/discount_list.dart';
import 'package:clube_ldv/model/category.dart';
import 'package:flutter/material.dart';

class CategoryDiscountPage extends StatelessWidget {
  final Category category;

  const CategoryDiscountPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(category.name),
          //leading: (context.canPop() == false) ? const ReturnButton() : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DiscountList(
          discounts: [
          ],
        ),
      ),
    );
  }
}

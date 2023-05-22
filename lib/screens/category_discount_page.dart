import 'package:clube_ldv/components/discount_list.dart';
import 'package:clube_ldv/components/return_button.dart';
import 'package:clube_ldv/model/category.dart';
import 'package:clube_ldv/model/company.dart';
import 'package:clube_ldv/model/discount.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryDiscountPage extends StatelessWidget {
  final Category category;

  const CategoryDiscountPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(category.name),
          leading: (context.canPop() == false) ? const ReturnButton() : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DiscountList(
          discounts: [
            Discount(
              id: 1,
              name: 'Discount',
              description: "Discount",
              company: Company(
                name: "Company",
              ),
            )
          ],
        ),
      ),
    );
  }
}

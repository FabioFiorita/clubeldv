import 'package:clube_ldv/components/discount_list.dart';
import 'package:clube_ldv/components/return_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/company.dart';
import '../model/discount.dart';

class DiscountListPage extends StatelessWidget {
  const DiscountListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Descontos"),
          leading: (context.canPop() == false) ? const ReturnButton() : null,),
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

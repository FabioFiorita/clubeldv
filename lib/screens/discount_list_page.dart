import 'package:clube_ldv/components/discount_list.dart';
import 'package:flutter/material.dart';

class DiscountListPage extends StatelessWidget {
  const DiscountListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Descontos"),
      ),
      //leading: (context.canPop() == false) ? const ReturnButton() : null,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DiscountList(
          discounts: [],
        ),
      ),
    );
  }
}

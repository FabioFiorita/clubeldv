import 'package:clube_ldv/service/discount_service.dart';
import 'package:flutter/material.dart';

import '../model/discount.dart';
import 'discount_card.dart';

class DiscountList extends StatelessWidget {
  final List<Discount> discounts;

  const DiscountList({Key? key, required this.discounts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DiscountCard(
          discount: DiscountService().getFromId(1),
        );
      },
      itemCount: discounts.length,
    );
  }
}

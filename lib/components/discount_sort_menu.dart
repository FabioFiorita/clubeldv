import 'package:clubeldv/components/discount_sort_menu_item.dart';
import 'package:flutter/material.dart';

import '../utils/discount_order.dart';

class DiscountSortMenu extends StatelessWidget {
  final DiscountOrder currentOrder;
  final bool isAscending;
  final Function(DiscountOrder, bool) onChanged;

  const DiscountSortMenu({
    Key? key,
    required this.currentOrder,
    required this.isAscending,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<DiscountOrder>(
      icon: const Icon(Icons.sort),
      onSelected: (order) {
        if (currentOrder == order) {
          onChanged(order, !isAscending);
        } else {
          onChanged(order, true);
        }
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<DiscountOrder>>[
          PopupMenuItem<DiscountOrder>(
            value: DiscountOrder.category,
            child: DiscountSortMenuItem(
              title: 'Ordenar por Categoria',
              isAscending: isAscending,
              isSelected: currentOrder == DiscountOrder.category,
            ),
          ),
          PopupMenuItem<DiscountOrder>(
            value: DiscountOrder.alphabetical,
            child: DiscountSortMenuItem(
              title: 'Ordenar por Nome',
              isAscending: isAscending,
              isSelected: currentOrder == DiscountOrder.alphabetical,
            ),
          ),
          PopupMenuItem<DiscountOrder>(
            value: DiscountOrder.validUntil,
            child: DiscountSortMenuItem(
              title: 'Ordenar por Validade',
              isAscending: isAscending,
              isSelected: currentOrder == DiscountOrder.validUntil,
            ),
          ),
          PopupMenuItem<DiscountOrder>(
            value: DiscountOrder.company,
            child: DiscountSortMenuItem(
              title: 'Ordenar por Empresa',
              isAscending: isAscending,
              isSelected: currentOrder == DiscountOrder.company,
            ),
          ),
        ];
      },
    );
  }
}

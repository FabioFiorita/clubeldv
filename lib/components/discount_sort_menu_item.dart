import 'package:flutter/material.dart';

class DiscountSortMenuItem extends StatelessWidget {
  final String title;
  final bool isAscending;
  final bool isSelected;

  const DiscountSortMenuItem({
    Key? key,
    required this.title,
    required this.isAscending,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        if (isSelected)
          Icon(
            isAscending ? Icons.arrow_upward : Icons.arrow_downward,
          ),
      ],
    );
  }
}

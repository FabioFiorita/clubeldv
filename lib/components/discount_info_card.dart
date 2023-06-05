import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

import '../model/discount_info.dart';

class DiscountInfoCard extends StatelessWidget {
  final List<DiscountInfo> discountInfoList;

  const DiscountInfoCard({
    Key? key,
    required this.discountInfoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Column(
            children: List.generate(
              discountInfoList.length,
              (index) => ListTile(
                leading: Icon(
                  discountInfoList[index].icon,
                ),
                iconColor: discountInfoList[index].iconColor,
                title: SelectableText(discountInfoList[index].info),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

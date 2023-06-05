import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:flutter/material.dart';

import '../model/discount.dart';
import 'loading_component.dart';

class DiscountListTile extends StatelessWidget {
  final Discount discount;

  const DiscountListTile({Key? key, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: context.circularRadius,
      ),
      onTap: () => context.navigateTo(DiscountRoute(discountId: discount.id)),
      leading: ClipRRect(
        borderRadius: context.circularRadius,
        child: Image.network(
          discount.image ?? '',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null
              ? child
              : const LoadingComponent(),
          errorBuilder: (context, error, stackTrace) =>
              Container(),
        ),
      ),
      title: Text(discount.name),
      subtitle: Text(discount.company.name),
    );
  }
}

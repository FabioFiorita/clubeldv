import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:flutter/material.dart';

import '../model/discount.dart';

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
        child: CachedNetworkImage(
          imageUrl: discount.image ?? '',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.restaurant_menu_rounded),
        ),
      ),
      title: Text(discount.name),
      subtitle: Text(discount.company.name),
    );
  }
}

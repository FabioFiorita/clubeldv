import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/model/discount.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'loading_component.dart';

class SimpleDiscountCard extends StatelessWidget {
  final Discount discount;

  const SimpleDiscountCard({Key? key, required this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String image = discount.company.image;
    return InkWell(
      borderRadius: context.circularRadius,
      onTap: () => context.navigateTo(
        DiscountRoute(discountId: discount.id),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: context.onPrimaryColor,
          borderRadius: context.circularRadius,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: context.colorScheme.shadow.withOpacity(0.6),
              offset: const Offset(2, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: context.circularRadius,
          child: Row(
            children: [
              Image.network(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) =>
                loadingProgress == null
                    ? child
                    : const LoadingComponent(),
                errorBuilder: (context, error, stackTrace) =>
                    Container(),
              ),
              Expanded(
                child: Padding(
                  padding: context.edgeInsetsSmall,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        discount.name,
                        style: context.textTheme.titleLarge,
                        key: const Key('discountName'),
                      ),
                      Text(
                        discount.company.name,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.secondary,
                        ),
                        key: const Key('discountCompanyName'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

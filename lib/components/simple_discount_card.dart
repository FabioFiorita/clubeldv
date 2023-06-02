import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/model/discount.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:flutter/material.dart';

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
          color: Colors.white,
          borderRadius: context.circularRadius,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
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
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.local_pizza_rounded),
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
                      ),
                      Text(
                        discount.company.name,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.secondary,
                        ),
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

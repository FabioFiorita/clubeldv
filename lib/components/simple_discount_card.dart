import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      borderRadius: BorderRadius.circular(16.0),
      onTap: () => context.navigateTo(
        DiscountRoute(discountId: discount.id),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(2, 2),
              blurRadius: 8,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(
                  Icons.local_pizza_rounded,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        discount.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        discount.company.name,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
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

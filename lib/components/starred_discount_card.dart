import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/components/loading_component.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/discount_providers.dart';

class StarredDiscountCard extends ConsumerWidget {
  const StarredDiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncStarredDiscount = ref.watch(starredDiscountProvider);

    return asyncStarredDiscount.when(
        data: (discount) => InkWell(
              borderRadius: context.circularRadius,
              onTap: () => context.navigateTo(
                DiscountRoute(discountId: discount.id),
              ),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: context.circularRadius,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      offset: const Offset(4, 4),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: ClipRRect(
                    borderRadius: context.circularRadius,
                    child: Column(
                      children: [
                        Image.network(
                          discount.company.image,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.local_pizza_rounded),
                        ),
                        ClipRRect(
                          borderRadius: context.bottomCircularRadius,
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: context.edgeInsetsSmall,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    discount.name,
                                    style: context.textTheme.titleLarge,
                                  ),
                                  Text(
                                    discount.company.name,
                                    style: context.textTheme.titleMedium
                                        ?.copyWith(
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                  ),
                                  Text(
                                    "Valido até ${discount.validUntil.day}/${discount.validUntil.month}/${discount.validUntil.year}",
                                    style: context.textTheme.titleMedium
                                        ?.copyWith(
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
        loading: () => const LoadingComponent(),
        error: (error, stack) => Container());
  }
}

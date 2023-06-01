import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clubeldv/components/loading_component.dart';
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
              borderRadius: BorderRadius.circular(16.0),
              onTap: () => context.navigateTo(
                DiscountRoute(discountId: discount.id),
              ),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      offset: const Offset(4, 4),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          height: 200,
                          width: double.infinity,
                          imageUrl: discount.image ?? "",
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => Container(),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0)),
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    discount.name,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Text(
                                    discount.company.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                  ),
                                  Text(
                                    "Valido até ${discount.validUntil.day}/${discount.validUntil.month}/${discount.validUntil.year}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
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

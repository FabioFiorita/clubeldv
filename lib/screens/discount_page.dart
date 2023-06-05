import 'package:auto_route/auto_route.dart';
import 'package:clubeldv/components/discount_info_card.dart';
import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:clubeldv/model/category.dart';
import 'package:clubeldv/routes/app_router.dart';
import 'package:clubeldv/screens/error_page.dart';
import 'package:clubeldv/screens/loading_page.dart';
import 'package:clubeldv/utils/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/loading_component.dart';
import '../model/discount_info.dart';
import '../state/discount_providers.dart';

@RoutePage()
class DiscountPage extends ConsumerWidget {
  final String discountId;

  const DiscountPage(
      {Key? key, @PathParam('discount') required this.discountId})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDiscount = ref.watch(discountProvider(id: discountId));
    return asyncDiscount.when(
        data: (discount) {
          final Category category = categories
              .firstWhere((category) => category.id == discount.category);
          return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Column(
                    children: [
                      Stack(alignment: Alignment.topRight, children: [
                        Image.network(
                          discount.image ?? '',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) =>
                          loadingProgress == null
                              ? child
                              : const LoadingComponent(),
                          errorBuilder: (context, error, stackTrace) =>
                              Container(),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 16.0, right: 16.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: context.edgeInsets,
                              backgroundColor: Colors.grey[200],
                              foregroundColor: Colors.grey,
                            ),
                            onPressed: () => context.router.canPop()
                                ? context.router.pop()
                                : context.router.replace(const HomeRoute()),
                            child: const Icon(Icons.close_rounded),
                          ),
                        ),
                      ]),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              discount.company.name,
                              style: context.textTheme.titleLarge,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ListTile(
                                leading: const Icon(FontAwesomeIcons.instagram),
                                title:
                                    SelectableText(discount.company.instagram),
                                textColor: context.secondaryColor,
                                iconColor: context.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 16.0),
                              child: DiscountInfoCard(
                                discountInfoList: [
                                  DiscountInfo(
                                    info: discount.name,
                                    icon: Icons.card_giftcard_rounded,
                                    iconColor: context.secondaryColor,
                                  ),
                                  DiscountInfo(
                                    info: discount.description,
                                    icon: Icons.description_rounded,
                                    iconColor: context.secondaryColor,
                                  ),
                                  DiscountInfo(
                                    info:
                                        "Válido até ${discount.validUntil.day}/${discount.validUntil.month}/${discount.validUntil.year}",
                                    icon: Icons.calendar_month_rounded,
                                    iconColor: context.secondaryColor,
                                  ),
                                ],
                              ),
                            ),
                            DiscountInfoCard(
                              discountInfoList: [
                                DiscountInfo(
                                  info: category.name,
                                  icon: Icons.restaurant_menu_rounded,
                                  iconColor: context.secondaryColor,
                                ),
                                DiscountInfo(
                                  info: discount.company.address,
                                  icon: Icons.location_on_rounded,
                                  iconColor: context.secondaryColor,
                                ),
                                DiscountInfo(
                                  info:
                                      "(${discount.company.number.toString().substring(0, 2)}) ${discount.company.number.toString().substring(2, 6)}-${discount.company.number.toString().substring(6, 11)}",
                                  icon: Icons.local_phone_rounded,
                                  iconColor: context.secondaryColor,
                                ),
                                DiscountInfo(
                                  info: discount.company.openingHours,
                                  icon: Icons.access_time_rounded,
                                  iconColor: context.secondaryColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 168.0, left: 16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.0),
                      child: Image.network(
                        discount.company.image,
                        height: 64,
                        width: 64,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : const LoadingComponent(),
                        errorBuilder: (context, error, stackTrace) =>
                            Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        loading: () => const LoadingPage(),
        error: (error, stack) => const ErrorPage());
  }
}

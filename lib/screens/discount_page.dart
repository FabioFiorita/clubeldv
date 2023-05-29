import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clube_ldv/components/discount_info_card.dart';
import 'package:clube_ldv/model/discount.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class DiscountPage extends StatelessWidget {
  final Discount discount;

  const DiscountPage({Key? key, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Column(
            children: [
              Stack(alignment: Alignment.topRight, children: [
                CachedNetworkImage(
                  imageUrl: discount.image ?? '',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.restaurant_menu_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.grey[200],
                      foregroundColor: Colors.grey, // <-- Splash color
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Icon(Icons.close_rounded),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      discount.company.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        leading: const Icon(FontAwesomeIcons.instagram),
                        iconColor: Colors.red,
                        title: Text(discount.company.instagram),
                        textColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                      child: DiscountInfoCard(
                        icon: Icons.card_giftcard_rounded,
                        info: discount.name,
                        secondaryIcon: Icons.calendar_month_rounded,
                        secondaryInfo:
                            "Válido até ${discount.validUntil.day}/${discount.validUntil.month}/${discount.validUntil.year}",
                      ),
                    ),
                    DiscountInfoCard(
                      icon: Icons.location_on_sharp,
                      info: discount.company.address,
                      secondaryIcon: Icons.phone,
                      secondaryInfo:
                          "(${discount.company.number.toString().substring(0, 2)}) ${discount.company.number.toString().substring(2, 6)}-${discount.company.number.toString().substring(6, 10)}",
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
              child: CachedNetworkImage(
                imageUrl: discount.company.image,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.restaurant_menu_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

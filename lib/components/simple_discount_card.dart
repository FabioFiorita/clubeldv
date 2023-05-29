import 'package:cached_network_image/cached_network_image.dart';
import 'package:clube_ldv/model/discount.dart';
import 'package:flutter/material.dart';

class SimpleDiscountCard extends StatelessWidget {
  final Discount discount;
  const SimpleDiscountCard({Key? key, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String image = discount.company.image ?? '';
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        onTap: () {
          //context.go('/discount/1');
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),
              ),
              child: CachedNetworkImage(
                imageUrl: image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.local_pizza_rounded, color: Colors.red,),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  discount.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

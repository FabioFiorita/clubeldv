import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  final String title;
  const DiscountCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        onTap: () {},
        child: Row(
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),
              ),
              child: Image(
                image: AssetImage('images/logo.jpeg'),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "Descrição do desconto",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Validade: 31/12/2021",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

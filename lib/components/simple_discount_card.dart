import 'package:flutter/material.dart';

class SimpleDiscountCard extends StatelessWidget {
  final String title;
  const SimpleDiscountCard({Key? key, required this.title}) : super(key: key);

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
                child: Text(
                  title,
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

import 'package:clubeldv/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class EmptyDiscountPage extends StatelessWidget {
  final String title;

  const EmptyDiscountPage({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              "assets/images/man.png",
            ),
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              title,
              style: context.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
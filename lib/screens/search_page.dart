import 'package:clube_ldv/components/home_app_bar.dart';
import 'package:flutter/material.dart';

import '../components/simple_discount_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomeAppBar(),
        SliverPadding(
          padding: const EdgeInsets.only(top: 16.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: 4.0,
                  ),
                  child: SimpleDiscountCard(title: "Desconto ${index + 1}"),
                );
              },
              childCount: 10,
            ),
          ),
        )
      ],
    );
  }
}

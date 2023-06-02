import 'package:clubeldv/components/simple_discount_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mock/mock_discount.dart';

void main() {
  group('SimpleDiscountCard tests', () {
    testWidgets(
      'SimpleDiscountCard should have an image, two texts and be tappable',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
              home: Scaffold(
            body: SimpleDiscountCard(
              discount: mockDiscount,
            ),
          )),
        );

        final Finder discountName = find.byKey(const Key('discountName'));
        final Finder discountCompanyName =
            find.byKey(const Key('discountCompanyName'));

        expect(find.byType(InkWell), findsOneWidget);
        expect(find.byType(Image), findsOneWidget);
        expect(find.byType(Text), findsNWidgets(2));
        expect((tester.widget<Text>(discountName).data), mockDiscount.name);
        expect((tester.widget<Text>(discountCompanyName).data),
            mockDiscount.company.name);
      },
    );
  });
}

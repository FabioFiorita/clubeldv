import 'package:clubeldv/components/category_card.dart';
import 'package:clubeldv/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CategoryCard tests', () {
    testWidgets('CategoryCard should have an icon and a text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CategoryCard(
              category: Category(
                id: 'category-1',
                name: 'Category 1',
                icon: Icons.ac_unit,
                color: Colors.red,
              ),
            ),
          ),
        ),
      );

      final Finder categoryName = find.byKey(const Key('categoryName'));
      final Finder categoryIcon = find.byKey(const Key('categoryIcon'));

      expect(find.byType(InkWell), findsOneWidget);
      expect(find.byType(Icon), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
      expect((tester.widget<Text>(categoryName).data), 'Category 1');
      expect((tester.widget<Icon>(categoryIcon).icon), Icons.ac_unit);
    });
  });
}

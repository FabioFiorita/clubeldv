import 'package:clubeldv/components/discount_info_card.dart';
import 'package:clubeldv/model/discount_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<DiscountInfo> discountInfoList;

  setUp(() {
    discountInfoList = const [
      DiscountInfo(
        icon: Icons.ac_unit,
        info: 'info',
        iconColor: Colors.red,
      ),
      DiscountInfo(
        icon: Icons.access_alarm,
        info: 'info2',
        iconColor: Colors.green,
      ),
    ];
  });

  group('DiscountInfoCard tests', () {
    testWidgets(
        'DiscountInfoCard should have a column with a list of listTiles containing an icon and a text',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DiscountInfoCard(
              discountInfoList: discountInfoList,
            ),
          ),
        ),
      );

      final Finder container = find.byType(Container);
      final Finder column = find.byType(Column);

      expect(container, findsOneWidget);
      expect(find.byType(ClipRRect), findsOneWidget);
      expect(column, findsOneWidget);

      final List<ListTile> listTiles =
          tester.widgetList<ListTile>(find.byType(ListTile)).toList();
      expect(listTiles.length, discountInfoList.length);

      for (int i = 0; i < listTiles.length; i++) {
        final ListTile listTile = listTiles[i];
        final Icon leadingIcon = listTile.leading as Icon;
        final SelectableText titleText = listTile.title as SelectableText;

        expect(leadingIcon.icon, discountInfoList[i].icon);
        expect(titleText.data, discountInfoList[i].info);
      }
    });
  });
}

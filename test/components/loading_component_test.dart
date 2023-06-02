import 'package:clubeldv/components/loading_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoadingComponent has a centralized circular progress indicator',
      (tester) async {
    await tester.pumpWidget(const LoadingComponent());
    expect(find.byType(Center), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}

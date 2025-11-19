import 'package:experiment10/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Button increments counter', (WidgetTester tester) async {
    await tester.pumpWidget(const Experiment10App());

    // Verify initial text
    expect(find.text('You clicked 0 times'), findsOneWidget);

    // Tap the button
    final btn = find.byKey(const Key("incrementBtn"));
    await tester.tap(btn);
    await tester.pump();

    // Verify new value
    expect(find.text('You clicked 1 times'), findsOneWidget);
  });
}

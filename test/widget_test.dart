// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rmp_practice1/main.dart';

void main() {
  testWidgets('gallery shows simple and complex Figma mockups', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PracticeApp());

    expect(find.text('Практическая работа №1'), findsOneWidget);
    expect(find.text('Страница 1 · Простые макеты'), findsOneWidget);
    expect(find.text('Meditate'), findsWidgets);
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('Страница 2 · Сложные макеты'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Страница 2 · Сложные макеты'), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('Albert Flores'),
      400,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Albert Flores'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}

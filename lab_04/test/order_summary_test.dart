import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/cheese_pizza.dart';
import 'package:lab_04/main.dart';
import 'package:lab_04/menu.dart';

void main() {
  // Test 1: the menu shows the 3 items
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  // Test 2: tapping a card opens its detail screen
  testWidgets('tapping a card opens its detail screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    expect(find.byType(CheesePizzaScreen), findsOneWidget);
  });

  // Test 3: the back button returns to the menu
  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.byType(MenuScreen), findsOneWidget);
    expect(find.byType(CheesePizzaScreen), findsNothing);
  });
}

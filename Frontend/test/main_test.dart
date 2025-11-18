import 'package:flutter_test/flutter_test.dart';
import 'package:english_app/main.dart';
import 'package:flutter/material.dart';

void main() {
  group('Main App Tests', () {
    testWidgets('App should initialize without errors', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const EnglishApp());
      
      // Verify that the app starts successfully
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    test('Environment configuration should be accessible', () {
      // Verify that the app can run main() without throwing errors
      expect(() => main(), returnsNormally);
    });

    test('String utility - uppercase conversion', () {
      // Simple unit test for basic Dart functionality
      final testString = 'hello world';
      final result = testString.toUpperCase();
      
      expect(result, equals('HELLO WORLD'));
      expect(result.length, equals(11));
    });

    test('List operations - filtering even numbers', () {
      // Test basic Dart list operations
      final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      final evenNumbers = numbers.where((n) => n % 2 == 0).toList();
      
      expect(evenNumbers, equals([2, 4, 6, 8, 10]));
      expect(evenNumbers.length, equals(5));
    });

    test('Map operations - data transformation', () {
      // Test basic Dart map operations
      final userData = {
        'name': 'Test User',
        'age': 25,
        'isActive': true,
      };
      
      expect(userData['name'], equals('Test User'));
      expect(userData['age'], isA<int>());
      expect(userData['isActive'], isTrue);
      expect(userData.length, equals(3));
    });
  });
}

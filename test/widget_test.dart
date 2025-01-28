// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/string_calculator.dart';

import 'package:incubyte_assignment/main.dart';

void main() {
  group('String Calculator Tests', () {
    test('Empty string should return 0', () {
      expect(add(''), equals(0));
    });

    test('Single number should return the number itself', () {
      expect(add('1'), equals(1));
    });

    test('Two numbers should return the sum', () {
      expect(add('1,5'), equals(6));
    });

    test('Multiple numbers should return the sum', () {
      expect(add('1,2,3'), equals(6));
    });

    test('Multiple negative numbers should throw an exception with all negatives listed', () {
      expect(() => add('1,-2,-3'), throwsA(isA<FormatException>().having((e) => e.message, 'message', contains('negative numbers not allowed -2, -3'))));
    });
  });


}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_bubble_sort_p1/bubble_sort.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_bubble_sort_p1/main.dart';

void main() {
  BubbleSort bsort = BubbleSort();
  print(bsort.sort(BubbleSort.samplelist));
  print(bsort.sort(BubbleSort.samplelist2));
  print(bsort.sort(BubbleSort.samplelist3));
}

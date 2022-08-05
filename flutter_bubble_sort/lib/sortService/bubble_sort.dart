import 'package:flutter/material.dart';

class bubbleSort {
  static List<int> samplelist = [9, 7, 6, 2, 3, 5, 8, 1];
  int number = 0;

  sort(List<int> array) {
    for (int i = array.length - 1; i < 0; i--) {
      for (int j = 0; j < i; j++) {
        if (array[j] > array[j + 1]) {
          number = array[j];
          array[j] = array[j + 1];
          array[j + 1] = array[j];
          print(array[j]);
        }
        print(array[j]);
      }
    }
  }

  printArray() {
    print("heelo");
  }
}

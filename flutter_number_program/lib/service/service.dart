import 'package:flutter/material.dart';

class ServiceProgram {
  String calulate(int number) {
    if (_process1(number) == 0) {
      return "NO";
    }
    if (_process2(number) == 0) {
      return "NO";
    }
    return "YES";
  }

  int _process1(int number) {
    if (number == 0) return 0;
    if (number == 1 || number == 2) return number;
    if (number % 2 == 0) return 0;
    return number;
  }

  // 홀수 중에서 배수들을 제외
  int _process2(int number) {
    int startNum;
    for (int i = 1; i <= number / 2; i++) {
      startNum = i * 2 + 1;
      if (number == startNum) {
        break;
      }
      if (number % startNum == 0) {
        return 0;
      }
    }
    return number;
  }

  static makeSampleData() {}
}

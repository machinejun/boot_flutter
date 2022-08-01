import 'package:flutter/material.dart';

// 하드코딩을 줄이기 위해서.... 상수값들 선언

const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

// 헤더 높이
const double headerHeight = 620;

//MediaQuery (동적으로 화면의 사이즈를 받기 위해서 >> body는 항상 화면의 70%)
double getBodyWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7;
}

import 'package:flutter/material.dart';

TextStyle h4({mColor = Colors.black}) { // 선택적 매개변수
  return TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle h5({mColor = Colors.black}) {
  return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle1({mColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle subtitle2({mColor = Colors.black}) {
  return TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle overLine({mColor = Colors.black}) {
  return TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: mColor);
}

TextStyle body({mColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: mColor);
}


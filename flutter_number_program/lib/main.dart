import 'package:flutter/material.dart';
import 'package:flutter_number_program/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("소수 판별기"),
        ),
        body: Container(
          child: MainPage(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/screens/main_screen.dart';
import 'package:flutter_carrot_market_ui_1/theme.dart';

void main() {
  runApp(const CarrotMarkUI());
}

class CarrotMarkUI extends StatelessWidget {
  const CarrotMarkUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "carrot_market_ui",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: myAppTheme(),
    );
  }
}

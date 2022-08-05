import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/main_screen.dart';
import 'package:flutter_carrot_ui/theme.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({Key? key}) : super(key: key);

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

import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/components/home/home_body.dart';
import 'package:flutter_airbnb2/components/home/home_header.dart';

class MainAirbnbPage extends StatelessWidget {
  const MainAirbnbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MainHeader(),
          Mainbody()
        ],
      ),
    );
  }
}

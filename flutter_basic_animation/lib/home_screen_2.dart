import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({Key? key}) : super(key: key);
  int index = 0;

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  final random = Random();
  callPushButton() async {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble());
    await Future.delayed(const Duration(seconds: 1));
    sleep(const Duration(seconds: 1));
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
    _borderRadiusGeometry =
        BorderRadius.circular(random.nextInt(100).toDouble());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
          duration: const Duration(seconds: 3),
          curve: Curves.bounceIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => callPushButton(),
        child: Icon(Icons.arrow_downward),
      ),
    );
  }
}

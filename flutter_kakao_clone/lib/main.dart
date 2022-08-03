import 'package:flutter/material.dart';
import 'package:flutter_kakao_clone/screens/main_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.yellow,
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(color: Colors.blue)
        ),
      ),
      home: MainScreen(),
    );
  }
}

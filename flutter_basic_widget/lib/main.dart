import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/components/basic_text.dart';

void main() {
  runApp(const MyWidget());
}

// 기본 위젯
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  final String _name =  "홍길동"; // <-- 기본위젯의 변수는 엥간하면 final 선언해줘라 why? 한번 셋팅하면 변하지 x
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                  color: Colors.amber[300],
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    ),
                  ),
              ),
            ),
          ),
        ),
      ),
    ),
  };
}

class basic_row_widget extends StatelessWidget {
  const basic_row_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(child: const FlutterLogo()),
        Expanded(
          child: const Text(
            "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."
            )),
        Expanded(child: const Icon(Icons.sentiment_very_satisfied)),
      ],
    );
  }
}

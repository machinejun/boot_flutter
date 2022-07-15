import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // <-- stateless 위젯은 생성때 한번만 Context를 매개변수로 받는다.
    return MaterialApp(title: "StateFull Sample", home: DayAndNight());
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Today(),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.brown,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = "";

  void changeText() {
    changeValue == "낮"
        ? setState(() {
            changeValue = "밤";
          })
        : setState(() {
            changeValue = "낮";
          });
  }

  @override
  void initState() {
    // 이 위젯이 실행될 때 단 한번만 실행되는 함수
    changeValue = "낮";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => changeText(),
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Card Page",
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("how Center"), centerTitle: true),
        body: Center(
          // center 위젯은 가로 축으로 가운데 정렬
          // 세로 축으로 가운데 정렬은 컬럼에 메인축을 활용한다.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueAccent[100],
                width: 300,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30.0 , 0, 0),
                  child: Text("hello",  style: TextStyle(backgroundColor: Colors.yellow)),
                )),
              Text("hello"),
              Text("hello"),
            ],
          ),
        ));
  }
}

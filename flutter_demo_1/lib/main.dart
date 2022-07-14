import 'package:flutter/material.dart';

// 1. import <-- flutter/material.dart
// 구글에서 제공하는 모든 material 프레임워크에 있는 기본 위젯과 테마를 사용
// 하기위해서는 이 친구를 가져와야 한다.

//2. 메인 함수 : 컴파일러에게 앱의 시작점을 알려준다.
// void 는 메인 함수 실행완료시 아무값도 리턴하지 않는다.
void main() => runApp(MyApp());

//3. runApp : 주어진 인자값으로 들어오는 위젯을 루트 위젯으로 만들어 준다.
// 위젯 트리를 생성해 준다.
// 플러터, 다트는 문장에 끝은 항상 ";"으로 마쳐야 한다.
// 함수 : main(), runApp() , class : MyApp()
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // build : 클래스에서 제공하는 모든 위젯은 또 다른 위젯을 리턴하는 build 함수를 가지고 있다.
  @override
  Widget build(BuildContext context) {
    // 플러터에서 제공하는 Material 디자인을 사용하는 위젯을 상위 위젯으로 만들어 준다.
    return MaterialApp(
      title: "My Flutter App",
      theme: ThemeData(
          primarySwatch:
              Colors.orange), // swatch : 견본 > 우리가 만든 앱에 사용하는 기본 앱의 음영등을 설정한다.
      home: MyHomePage(), // home : 앱이 시작되었을 때 보여지는 화면
    );
  }
}

// 화면에 보여주기 위한 렌더링 위젯을 만들때 >> stateless or stateful 위젯을 사용할 것인지 먼저 고민한다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

// scaffold: 발판 >> 앱을 빨리 만들 수 있도록 가장 많이 사용하는 시각적 레이아웃을 구성해주는 발판이다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first App"), // 화면에 보여주는 친구라서 위젯으로 감싸야 한다.
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(// 모든 자식위젯들을 수직으로 배치하는 친구
          children: [
              Container( // 컨테이너 특징 기억
                width: double.infinity, // 화면 끝까지 늘어남
                color: Colors.red,
                height: 50,
                child: const Text("hello1", textAlign: TextAlign.center)
              ),
              Text("hello1"
              , style: TextStyle(fontSize: 20)),
              Text("hello1"
              , style: TextStyle(fontSize: 20))
          ],) 
        ),  
    );
  }
}

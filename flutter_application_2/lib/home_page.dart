import 'package:flutter/material.dart';

// 지금까지는 상태가 없는 stateless 위젯을 사용했습니다.

//stf 두 클래스는 다르다
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
// state를 리턴하는 친구가 있음

class _HomePageState extends State<HomePage> {
  // 변수 선언 : 상태를 저장할 수 있는 변수를 선언
  int _counter = 0;

  // 메서드 선언 (동작)
  void _increment() {
    // 상태를 변경할 수 있는 메서들 만들때는 반드시 setState를 만들고 그안에 정의.
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('increment')),
          const SizedBox(width: 16),
          Text("count : $_counter")
        ],
      ),
    );
  }
}

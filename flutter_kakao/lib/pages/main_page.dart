import 'package:flutter/material.dart';
import 'package:flutter_kakao/pages/chat_page.dart';
import 'package:flutter_kakao/pages/friend_page.dart';
import 'package:flutter_kakao/pages/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // index에 대한 관리가 필요하다 >> 몇번 인덱스를 선택했는지 저장/ 관리 필요
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendPage(),
          ChatPage(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.grey[100],
        onTap: (index) {
          print(index);
          setState(() {
            _selectedIndex = index; // 탭이되면 index로 넘어오는 매개변수로 상태값을 변경후 다시 그려라
          });
        },
        items: [
          // 기본적으로 5개 까지만 표시할 수 있다 더 넣으려면 추가적인 속성 사용
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: "user"), // --> 현재 인덱스 = 0
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: "comment"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsis), label: "ellipsis"),
        ],
      ), // indexStack과 거의 짝을 이루어서 사용한다.
    );
  }
}

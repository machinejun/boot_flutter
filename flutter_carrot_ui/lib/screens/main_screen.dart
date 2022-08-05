import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_carrot_ui/screens/home/home_screen.dart';

import 'chatting/chatting_screen.dart';
import 'my_carrot/my_carrot_screen.dart';
import 'near_me/near_me_screen.dart';
import 'neighborhood_life/neighborhood_life_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborHoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_on_square), label: '동내생활'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: '나의 당근'),
          ]),
    );
  }
}

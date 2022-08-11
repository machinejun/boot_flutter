import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/chat_box.dart';
import 'package:flutter_carrot_ui/models/neighboodLife_card.dart';

import 'package:flutter_carrot_ui/screens/chatting/chatting_screen.dart';
import 'package:flutter_carrot_ui/screens/home/home_screen.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrot_profile.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrot_screen2.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrpt_screen.dart';
import 'package:flutter_carrot_ui/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot_ui/screens/neighborhood_life/neighborhood_life_screen.dart';

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
          NeighborHoodLifeScreen(itemList: cardItmelist),
          NearMeScreen(),
          ChattingScreen(chatBoxList: chatboxList),
          MyCarrotScreen2()
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
                icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
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

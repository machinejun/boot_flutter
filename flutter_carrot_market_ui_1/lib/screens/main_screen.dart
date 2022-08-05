import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/screens/components/appbar_leading.dart';
import 'package:flutter_carrot_market_ui_1/screens/home/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      appBar: AppBar(
        leading: AppbarLeading(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              CupertinoIcons.list_bullet_indent,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.red[100],
          ),
          Container(
            color: Colors.blue[100],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "홈"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: "채팅"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: "채팅"),
          ]),
    );
  }
}

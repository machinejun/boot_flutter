import 'package:flutter/material.dart';
import 'package:flutter_kakao_clone/screens/friends_screen.dart';
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
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendsScreen(),
          Center(child: Text("2")),
          Center(child: Text("3")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: "user"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.comment), label: "comment"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.ellipsis), label: "ellipsis"),
          ]),
    );
  }
}

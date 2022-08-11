import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/icon_menu.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrot_component/my_carrot_cardIcon_menu.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrot_component/my_carrot_header.dart';

class MyCarrotScreen2 extends StatelessWidget {
  const MyCarrotScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenuItems1),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenuItems2),
          const SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenuItems3)
        ],
      ),
    );
  }
}

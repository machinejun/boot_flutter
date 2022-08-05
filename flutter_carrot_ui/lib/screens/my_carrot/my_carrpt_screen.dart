import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/my_carrot_profile.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/mycarrot_profile_card.dart';
import 'package:flutter_carrot_ui/theme.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "나의 당근",
          style: textTheme().headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.gear_alt_fill),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: MyCarrotProfile(),
          ),
          MyCarrotProfileCard(),
        ]),
      ),
    );
  }
}

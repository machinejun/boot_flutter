import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/mycarrot_profile_tile.dart';
import 'package:flutter_carrot_ui/theme.dart';

class MyCarrotProfile extends StatelessWidget {
  const MyCarrotProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: MyCarrotProfileTile(),
          ),
          InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                      child: Text("프로필 보기", style: textTheme().bodyText1)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildProfileIcons(CupertinoIcons.doc_plaintext, "판매내역"),
                _buildProfileIcons(CupertinoIcons.bag, "구매내역"),
                _buildProfileIcons(CupertinoIcons.suit_heart, "관심목록"),
              ],
            ),
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }

  static Widget _buildProfileIcons(IconData icon, String text) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.orangeAccent[100],
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon,
            size: 20,
            color: Colors.orange,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

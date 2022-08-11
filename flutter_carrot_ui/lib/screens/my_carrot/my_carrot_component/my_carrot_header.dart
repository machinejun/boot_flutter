import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_carrot_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30),
            _buildProfileButton(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton("판매내역", FontAwesomeIcons.receipt),
                _buildRoundTextButton("구매내역", FontAwesomeIcons.shoppingBag),
                _buildRoundTextButton("관심목록", FontAwesomeIcons.heart),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32.5),
                  child: Image.network(
                    "http://file.gamejob.co.kr/net/Community/Gallery/View?FN=/Image/2019/2/NV_27136911_2.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: 16),
        Column(
          children: [
            Text("developer", style: textTheme().headline2),
            SizedBox(height: 10),
            Text("좌동 #00912")
          ],
        )
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1.0),
            borderRadius: BorderRadius.circular(6.0)),
        child: Center(child: Text("프로필 보기", style: textTheme().headline2)),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color.fromRGBO(255, 226, 208, 1),
              border: Border.all(color: Color(0xFFD4D5DD), width: 0.5)),
          child: Icon(iconData, color: Colors.orange),
        ),
        SizedBox(height: 10),
        Text(title, style: textTheme().subtitle1)
      ],
    );
  }
}

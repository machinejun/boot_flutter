import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/bottom_icon_button.dart';
import 'package:flutter_kakao/components/round_icon_button.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(user.backgroundImage),
              fit: BoxFit.fitHeight)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(FontAwesomeIcons.times,
                size: 30, color: Colors.white),
          ),
          actions: const [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(width: 20)
          ],
        ),
        backgroundColor: Colors.transparent, // 투명 색깔(transparent)
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    user.backgroundImage
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 8),
            Text(user.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
              maxLines: 1
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.white,
              indent: 30,
              endIndent: 30,
            ),
            if(user.name == me.name) _buildMyIcons() else _buildFriendsIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: '나와의 채팅'),
          SizedBox(width: 50),
          BottomIconButton(icon: FontAwesomeIcons.pen, text: '프로필 편집'),
        ],
      ),
    );
  }

  Widget _buildFriendsIcons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: '1:1 채팅'),
          SizedBox(width: 50),
          BottomIconButton(icon: FontAwesomeIcons.phone, text: '통화하기')
        ],
      ),
    );
  }
}

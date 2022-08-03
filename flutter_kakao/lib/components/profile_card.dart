import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:flutter_kakao/pages/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => ProfilePage(user: user)),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage:
                NetworkImage(user.backgroundImage), // 통신을 통해서 이미지를 그릴때 사용
          ),
          title: Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            user.intro,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}

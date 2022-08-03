import 'package:flutter/material.dart';
import 'package:flutter_kakao_clone/models/models.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          print(user.name);
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(user.backgroundImg),
          ),
          title: Text(
            user.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            )
          ),
          subtitle: Text(
            user.intro,
            style: TextStyle(
              fontSize: 12
              )
          ),
        ),
      ),
    );
  }
}

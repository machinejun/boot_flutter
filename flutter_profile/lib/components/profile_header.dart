import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvater(),
        const SizedBox(width: 20),
        _buildProfileText()
      ],
    );
  }

  Column _buildProfileText() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("flutter Coding", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          )),
          Text("플러터 개발자/ CEO / CTO", style: TextStyle(
            fontSize: 20,
          )),
          Text("BootCamp", style: TextStyle(
            fontSize: 15,
            color: Colors.grey
          ))
        ],
      );
  }
}

Widget _buildHeaderAvater() {
  return SizedBox(
    width: 100,
    height: 100,
    child: CircleAvatar(
      backgroundImage: AssetImage("assets/avatar.png"),
    ),
  );
}

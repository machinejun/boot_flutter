import 'package:flutter/material.dart';
import 'package:flutter_kakao_clone/components/profile_card.dart';
import 'package:flutter_kakao_clone/models/models.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("친구"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          ProfileCard(user: me),
          Divider(),
          Row(
            children: [
              SizedBox(width: 20),
              Text("친구"),
              SizedBox(
                width: 6.0,
              ),
              Text('${friends.length}')
            ],
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length, (index) => ProfileCard(user: friends[index])
              ),
            ),
          )
        ],
      ),
    );
  }
}

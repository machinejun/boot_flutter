import 'package:flutter/material.dart';
import 'package:flutter_kakao_clone/models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(chat.image)
        ),
      title: Text(chat.title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16
        )
      ),
      subtitle: Text(chat.content),
      contentPadding: const EdgeInsets.all(0),
      

    );
  }
}

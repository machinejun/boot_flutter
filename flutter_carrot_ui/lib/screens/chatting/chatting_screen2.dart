import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/chat_message.dart';
import 'package:flutter_carrot_ui/screens/chatting/chatting_component/chat_container.dart';
import 'package:flutter_carrot_ui/screens/components/appbar_prefered.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(chatMessageList.length,
            (index) => ChatContainer(message: chatMessageList[index])),
      ),
    );
  }
}

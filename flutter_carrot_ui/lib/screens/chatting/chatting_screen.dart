import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_ui/models/chat_box.dart';
import 'package:flutter_carrot_ui/theme.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key, required this.chatBoxList}) : super(key: key);

  final List<ChatBox> chatBoxList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅", style: textTheme().headline1),
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    _buildChatBox(chatBoxList[index]),
                    Visibility(
                      visible: index == chatBoxList.length - 1,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Divider(
                            color: Colors.grey, height: 0.2, thickness: 0.2),
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (context, index) =>
              const Divider(color: Colors.grey, height: 0.2, thickness: 0.2),
          itemCount: chatboxList.length),
    );
  }

  Widget _buildChatBox(ChatBox chatBox) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network(chatBox.profileImage, fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      chatBox.profileName,
                      style: textTheme().subtitle1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      chatBox.address,
                      style: textTheme().subtitle2,
                    ),
                    Text(
                      "•",
                      style: textTheme().subtitle2,
                    ),
                    Text(
                      chatBox.writeAt,
                      style: textTheme().subtitle2,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  chatBox.content,
                  style: textTheme().subtitle2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Visibility(
            visible: chatBox.contentImage != null,
            child: SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  chatBox.contentImage ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

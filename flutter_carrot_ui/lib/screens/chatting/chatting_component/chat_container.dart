import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/chat_message.dart';
import 'package:flutter_carrot_ui/screens/components/Image_container.dart';
import 'package:flutter_carrot_ui/theme.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      height: 100,
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 25,
            imageUrl: message.profileImage,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: message.sender, style: textTheme().bodyText1),
                      TextSpan(text: message.location),
                      TextSpan(text: '.. ${message.sendDate}'),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  message.message,
                  style: textTheme().bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
              ],
            ),
          ),
          Visibility(
              visible: message.imageUrl != null,
              child: ImageContainer(
                  borderRadius: 8,
                  imageUrl: message.imageUrl ?? "",
                  height: 50,
                  width: 50))
        ],
      ),
    );
  }
}

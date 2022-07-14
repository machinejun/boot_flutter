import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMessageBtn("follow", Colors.white, Colors.blue, Colors.blue),
        _buildMessageBtn("text", Colors.black, Colors.white, Colors.black)
      ],
    );
  }
}

Widget _buildMessageBtn(String text, Color textColor, Color boxColor, Color borderColor) {
  return InkWell(
    onTap: () {
      print("Message btn click");
    },
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      decoration: BoxDecoration(
          color: boxColor,
           borderRadius: BorderRadius.circular(10),
           border: Border.all(color: borderColor)),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomIconButton extends StatelessWidget {
  const BottomIconButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white)
        )
      ],
    );
  }
}

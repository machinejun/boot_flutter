import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/theme.dart';

class BottomIconBox extends StatelessWidget {
  const BottomIconBox(
      {Key? key, required this.iconData, required this.text, this.subText})
      : super(key: key);

  final IconData iconData;
  final String text;
  final String? subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 17),
        const SizedBox(width: 8),
        Text(text, style: textTheme().headline3),
        Text(
          subText ?? "",
          style: textTheme().headline3,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BasicText extends StatelessWidget {
  const BasicText({
    Key? key,
    required String name,
  }) : _name = name, super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( // ctrl + w+ w => 영역 표시
          width: double.infinity,
          child: Text(
            "Hello, $_name! How are You? sdfsdfsdfsdsdfsdasdasdasdsdasdasdasdasdasdasd",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const Text.rich(
          TextSpan(
            text: 'Hello',  // default Text Style
            children: [
              TextSpan(
                text: ' beautiful',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: ' world',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
              )
            ]
          )
        ),
      ],
    );
  }
}

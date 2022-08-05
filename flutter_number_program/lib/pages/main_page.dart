import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_number_program/components/show_area.dart';
import 'package:flutter_number_program/controller/controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int? number;
  String _check = "";
  final TextEditingController _textEditingController = TextEditingController();
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          "소수 판결기",
          style: TextStyle(fontSize: 25),
        ),
        Text("(소수를 판별하여 YES/NO를 리턴합니다.)"),
        Spacer(),
        ShowArea(check: _check, num: number),
        Spacer(),
        SizedBox(
          width: 250,
          child: TextField(
            onSubmitted: _handleSubmitted,
            controller: _textEditingController,
            maxLength: 5,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
            ],
            decoration: InputDecoration(labelText: "숫자만 입력할 수 있습니다."),
          ),
        ),
        SizedBox(height: 100)
      ],
    );
  }

  void _handleSubmitted(String value) {
    _textEditingController.clear();
    number = int.parse(value);
    setState(() {
      _check = _controller.startprogram(value);
    });
  }
}

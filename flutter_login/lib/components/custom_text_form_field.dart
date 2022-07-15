import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text ,style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: small_gap),
        TextFormField(
          // ! 는 null이 절대 아니다. 컴파일러에게 알려준는 것
          validator: (value) =>
              value!.isEmpty ? "please enter some text" : null,
          obscureText:
              text == "Password" ? true : false, // 해당 패스워드가 password 이면 *** 처리
          decoration: InputDecoration(
              hintText: "enter $text",
              enabledBorder: 
                  OutlineInputBorder(
                  // outlineInputBorder --> 기본 TextFormFeild 디자인 입니다.
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder:
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
              errorBorder:
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
              focusedErrorBorder: OutlineInputBorder(
                  // 에러가 발생했을 때 터치할 때
                borderRadius: BorderRadius.circular(20))),
        )
      ],
    );
  }
}

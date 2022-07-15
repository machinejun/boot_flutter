import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login" :(context) => LoginPage(),
        "/home":(context) => HomePage()
      },
    );
  }
}
/* 
작업 순서
❶ 전체 구성을 ListView 위젯으로 전체 구성하기
❷ SvgPicture 라이브러리로 Logo 위젯 만들기 lib/components/logo.dart
❸ TextFormField 위젯 만들기 lib/components/custom_text_form_field.dart
❹ Form 위젯 만들기 lib/components/custom_form.dart
❺ Form 위젯에 Theme를 적용한 TextButton 추가하기
❻ Navigator로 화면 이동하기
❼ Form 위젯 유효성(validation) 검사하기
*/
import 'package:flutter/material.dart';
import 'package:flutter_basic_animation/action_bar.dart';
import 'package:flutter_basic_animation/home_screen_2.dart';

// 플러터 애니메이션
// 첫번째 : 암시적 - implicit animation
// 두번째 : 명시적 - explicit animation
//
// 암시적 - 미리 정의된 스타일과 애니메이션을 사용하기 때문에 아주 간단하다.
//          만약, 미리 정의된 스타일이 아니라 커스터마이징 해서 직접 애니메이션을 만들어야 한다면
//          명시적 애니메이션을 구현하면 된다.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
      body: Center(child: AcctionBar()),
    ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("암시적 애니메이션"),
      ),
      body: FadeImage(),
    );
  }
}

class FadeImage extends StatefulWidget {
  const FadeImage({Key? key}) : super(key: key);

  @override
  State<FadeImage> createState() => _FadeImageState();
}

class _FadeImageState extends State<FadeImage> {
  final String sampleImageUrl =
      "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_man_1.jpg";
  double opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: const Duration(seconds: 2),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(sampleImageUrl)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                opacityValue = 0.1;
              });
            },
            child: const Text(
              "Start Stryle",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

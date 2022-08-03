import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class OrderChat extends StatelessWidget {
  const OrderChat(
      {Key? key, required this.name, required this.text, required this.time})
      : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: NetworkImage(friends[0].backgroundImage)),
        const SizedBox(width: 10),
        Flexible(
          // 채팅을 치다가 글자가 길면 화면 밖으로 넘어간다 --> Error 발생 --> flexible : 밑으로 떨어진다.
          flex:
              1, // defualt : Column, Row, 기본 축에서 남은 공간을 어떻게 차지하게 할 것인지 정해주는 속성
          fit: FlexFit.loose,
          // FlexFit.loose : 기본축의 남은 공간을 채우도록하되 필요한 공간만큼 차지하도록 설정 된다.
          // FlexFit.tight : 기본 축의 남은 공간을 전부 채우도록 한다.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white),
                child: Text(text),
              ),
            ],
          ),
        ),
        SizedBox(width: 4),
        Text(time, style: TextStyle(fontSize: 12))
      ],
    );
  }
}

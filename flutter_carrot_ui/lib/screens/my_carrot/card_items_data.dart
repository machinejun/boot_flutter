import 'package:flutter/cupertino.dart';

class Item {
  IconData icondata;
  String text;

  Item({required this.icondata, required this.text});
}

List<Item> items1 = [
  Item(icondata: CupertinoIcons.location_fill, text: "내 동네 설정"),
  Item(icondata: CupertinoIcons.square_arrow_down_fill, text: "동네 인증하기"),
  Item(icondata: CupertinoIcons.tag, text: "키워드 알림"),
  Item(icondata: CupertinoIcons.add_circled, text: "모아보기"),
];

List<Item> items2 = [
  Item(icondata: CupertinoIcons.location_fill, text: "동네생활 글"),
  Item(icondata: CupertinoIcons.chat_bubble, text: "동네생활 댓글"),
  Item(icondata: CupertinoIcons.star, text: "동네생활 주제 목록"),
];

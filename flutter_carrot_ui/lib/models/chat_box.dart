import 'package:flutter/cupertino.dart';

class ChatBox {
  String profileImage;
  String profileName;
  String address;
  String writeAt;
  String content;
  String? contentImage;

  ChatBox(
      {required this.profileImage,
      required this.profileName,
      required this.address,
      required this.writeAt,
      required this.content,
      this.contentImage});
}

List<ChatBox> chatboxList = [
  ChatBox(
      profileImage:
          "http://file.gamejob.co.kr/net/Community/Gallery/View?FN=/Image/2019/2/NV_27136911_2.jpg",
      profileName: "당근이",
      address: "대부동",
      writeAt: "1일전",
      content: "developer 님, 근처에 다양한 물품들이 아주 많이 존재하고 있습니다. 사실려면 지금이 기회입니다."),
  ChatBox(
      profileImage: "https://i.ytimg.com/vi/tZixREYOIZQ/maxresdefault.jpg",
      profileName: "flutter",
      address: "중동",
      writeAt: "2일전",
      content: "안녕하세요 지금 다 예약 상태인가요?",
      contentImage:
          "https://news.imaeil.com/photos/2021/12/07/2021120715272961486_l.jpg")
];

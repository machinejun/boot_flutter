import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});
}

// Sample DATA
final List<IconMenu> iconMenuItems1 = [
  IconMenu(title: "내 동네 설정", iconData: FontAwesomeIcons.mapMarkedAlt),
  IconMenu(title: "동네 인증 하기", iconData: FontAwesomeIcons.compressArrowsAlt),
  IconMenu(title: "키워드 알림", iconData: FontAwesomeIcons.tag),
  IconMenu(title: "모아 보기", iconData: FontAwesomeIcons.borderAll),
];
final List<IconMenu> iconMenuItems2 = [
  IconMenu(title: "동네 생활 글", iconData: FontAwesomeIcons.edit),
  IconMenu(title: "동네 생활", iconData: FontAwesomeIcons.comment),
  IconMenu(title: "동네생활 주제 목록", iconData: FontAwesomeIcons.listOl),
];
final List<IconMenu> iconMenuItems3 = [
  IconMenu(title: "프로필 관리", iconData: FontAwesomeIcons.person),
  IconMenu(title: "지역 광고", iconData: FontAwesomeIcons.adversal),
];

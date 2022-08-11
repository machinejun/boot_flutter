class NeighBoodLifeCard {
  String category;
  String writeAt;
  NeighboorLifePofile pofile;
  String content;
  String? contentImgUrl;
  int replyCount;

  NeighBoodLifeCard(
      {required this.category,
      required this.writeAt,
      required this.pofile,
      required this.content,
      this.contentImgUrl,
      required this.replyCount});
}

class NeighboorLifePofile {
  String profileImgUrl;
  String nickName;
  String address;
  int certificationCount;

  NeighboorLifePofile(
      {required this.profileImgUrl,
      required this.nickName,
      required this.address,
      required this.certificationCount});
}

List<NeighBoodLifeCard> cardItmelist = [
  NeighBoodLifeCard(
      category: "우리동네질문",
      writeAt: "3시간전",
      pofile: NeighboorLifePofile(
          profileImgUrl:
              "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427__480.jpg",
          nickName: "헬로비비",
          address: "좌동",
          certificationCount: 3),
      content:
          "예민한 개도 미용할 수 있는 곳이나 동물병원 어디 있을까요? 내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ",
      contentImgUrl:
          "https://cdn.pixabay.com/photo/2016/12/17/05/45/dog-1912874_960_720.jpg",
      replyCount: 11),
  NeighBoodLifeCard(
      category: "우리동네소식",
      writeAt: "1일전",
      pofile: NeighboorLifePofile(
          profileImgUrl:
              "https://cdn.pixabay.com/photo/2013/03/19/23/07/easter-bunny-95096_960_720.jpg",
          nickName: "당근토끼",
          address: "우동",
          certificationCount: 1),
      content: "이명 치료 잘 아시는 분 있나요",
      contentImgUrl:
          "https://cdn.pixabay.com/photo/2015/06/22/14/59/ears-817644_960_720.jpg",
      replyCount: 3),
];

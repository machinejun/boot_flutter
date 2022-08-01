import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  @override
  Widget build(BuildContext context) {
    // 인기 아이템은 전체 화면의 70%의 1/3 만큼에 사이즈를 가질 수 있도록 하고
    // 사이즈 - 5 만큼의 크기를 가지게 설계한다.

    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      // 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해서 최소 제약조건을 걸어준다.
      constraints: BoxConstraints(
        minWidth: 420,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}",
          fit: BoxFit.cover
          ),
        ),
        const SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent)
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text('깔끔하고 다 갖춰져 있어서 좋아요:, 위치도 완전 좋아요 다들 여기 살고 싶다고, ㅋㅋㅋㅋㅋㅋㅋㅋㅋ 화장실도 3개 에요!!!! 5명이서 씻는 것도 전혀 불편함이 없어요 이불도 포근해요',
        style: body1(),
        maxLines: 3,
        overflow: TextOverflow.ellipsis),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:  AssetImage("assets/${popularList[id]}"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text("데어", style: subtitle1()),
            Text("한국")
          ],
        )
      ],
    );
  }
}

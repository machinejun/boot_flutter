import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  PopularItem({Key? key, required int id}) : super(key: key);

  final imgList = ["p1.jpeg", "p2.jpeg", "p3.jpeg", "p4.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Column();
  }

  Widget _buildPouplarImg(id) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset(imgList[id]));
  }

  Widget _buildPopularStar(int starCount) {
    return Row(
      children: [
        for (int i = 0; i < starCount; i++)
          const Icon(Icons.star, color: Colors.red)
      ],
    );
  }

  Widget _buildPoularText() {
    return Text(
        "깔끔하고 잘 갖추어져 있어서 좋았어요: 위치도 완전 좋아요 다들 여기서 살구 싶다고 ㅋㅋㅋㅋ 화장실도 3개에요 5명이서 씻는 것도 전혀 불편하지 않았요");
        
  }
}

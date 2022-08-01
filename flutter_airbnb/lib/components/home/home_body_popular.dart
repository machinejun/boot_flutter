import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: _buildPopularTitle()),
        _buildPupularList(),
      ],
    );
  }
  
  Widget _buildPopularTitle() {
    return Column(
        children: [
          SizedBox(height: gap_m),
          Text('한국 숙속에 직접 다녀간 게스트의 후기', 
          style: h5(),
        ),
           Text('게스트 후기 2,500,000개 이상의, 평균 평점 4.7(5점 만점)',
           style: body1()
        ),
           const SizedBox(
           height: gap_m,
        )
      ],
    );
  }
  
  Widget _buildPupularList() {
    // 전체 화면 사이즈를 1000이라고 가정하고 이해를 해보자
    // buildPopularList의 넓이가 화면에 70%이니깐 700의 크기
    // HomeBodyPopularItem의 넓이가 700 1/3 크기로 세팅 233.33 - 5 = 228.33.. 이다
    // 228.33 의 인기 아이템이 3개가 배치되면 684.99 크기로 15.01이 남는다.
    // 따라서, HomeBodyPopular 위젯 사이에 sizedbox 를 width = 15/2 = 7.5 정도 둘 수 있다.
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2)
      ],
    );
  }
}

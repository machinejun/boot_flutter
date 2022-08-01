import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/sizes.dart';
import 'package:flutter_airbnb2/styles.dart';

class MainPageBanner extends StatelessWidget {
  const MainPageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [_buildBannerBackImg(), _buildBannerText(250)],
      ),
    );
  }

  Widget _buildBannerBackImg() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("assets/banner.jpg",
            fit: BoxFit.cover, width: double.infinity, height: 320));
  }

  Widget _buildBannerText(double inputWidth) {
    return Positioned(
      top: 35,
      left: 35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              constraints: BoxConstraints(maxWidth: inputWidth),
              child: Text('이제, 여행은 가까운 곳에서', style: h4(mColor: Colors.white))),
          const SizedBox(height: gap_m),
          Container(
              constraints: BoxConstraints(maxWidth: inputWidth),
              child: Text(
                  '새로운 공간에서 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요',
                  style: subtitle1(mColor: Colors.white))),
          const SizedBox(height: gap_m),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: (() {
                print("hello2");
              }),
              child: Text('가까운 여행지 불러오기', style: subtitle2()),
            ),
          )
        ],
      ),
    );
  }
}

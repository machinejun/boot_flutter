import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/components/common/common_form_field.dart';
import 'package:flutter_airbnb2/sizes.dart';
import 'package:flutter_airbnb2/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: screenWidth < 700 ? Alignment(0, 0) : Alignment(-0.6, 0),
      child: Container(
        width: 410,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(gap_m),
          child: Form(
              child: Column(
            children: [
              _buildFormTitle(),
              _buildFormField(),
              SizedBox(height: gap_m),
              _buildFormSubmit()
            ],
          )),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text('에어비엔비에서 숙소를 검색하세요.', style: h5()),
        const SizedBox(height: gap_xs),
        Text('혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간 전체 숙소까지, 에어비엔비 숙소에 다 있습니다.',
            style: subtitle2()),
        const SizedBox(height: gap_l)
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: '위치', hintText: '근처 추천 장소'),
        const SizedBox(
          height: gap_s,
        ),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: '체크인', hintText: '날짜 입력')),
            const SizedBox(width: gap_xs),
            Expanded(child: CommonFormField(prefixText: '체크 아웃', hintText: '날짜 입력'))
          ],
        ),
        const SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: '성인', hintText: '2')),
            const SizedBox(width: gap_xs),
            Expanded(child: CommonFormField(prefixText: '어린이', hintText: '0'))
          ],
        )
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed: () {
            print('hello');
          },
          child: Text('검색', style: subtitle1(mColor: Colors.white))),
    );
  }
}

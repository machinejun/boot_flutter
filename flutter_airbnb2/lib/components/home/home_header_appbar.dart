import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/sizes.dart';
import 'package:flutter_airbnb2/styles.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAppbarLogo('logo.png'),
        const Spacer(),
        _buildAppbarMenu(),
      ],
    );
  }

  Widget _buildAppbarLogo(String text) {
    return Row(
      children: [
        Image.asset("assets/${text}", width: 30, height: 30, color: Colors.red),
        const SizedBox(width: gap_s),
        Text('AiraBnb', style: h5(mColor: Colors.white))
      ],
    );
  }

  Widget _buildAppbarMenu() {
    return Row(
      children: [
        Text("회원가입" , style: subtitle1(mColor: Colors.white)),
        const SizedBox(width: gap_s),
        Text("로그인", style: subtitle1(mColor: Colors.white))
      ],
    );
  }
}

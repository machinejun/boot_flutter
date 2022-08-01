import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb2/components/home/home_header_form.dart';
import 'package:flutter_airbnb2/sizes.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: double.infinity,
      height: headerHeight,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: gap_m, left: gap_m, right: gap_m),
          child: Column(
            children: [
              HeaderAppbar(),
              SizedBox(height: gap_m),
              HomeHeaderForm()
            ],
          ),
        ),
      ),
    );
  }
}

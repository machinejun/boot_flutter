import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/components/home/home_body_banner.dart';
import 'package:flutter_airbnb2/sizes.dart';

class Mainbody extends StatelessWidget {
  const Mainbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = getBodyWidth(context);

    return Align(
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            MainPageBanner()
          ],
        ),
      )
      );
  }
}

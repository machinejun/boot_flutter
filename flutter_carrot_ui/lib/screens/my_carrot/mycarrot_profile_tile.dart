import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_carrot_ui/theme.dart';

class MyCarrotProfileTile extends StatelessWidget {
  const MyCarrotProfileTile({Key? key}) : super(key: key);

  final String url =
      'https://previews.123rf.com/images/jemastock/jemastock1708/jemastock170816695/84685880-%EB%82%A8%EC%9E%90-%EC%96%BC%EA%B5%B4-%EC%BA%90%EB%A6%AD%ED%84%B0-%EC%BA%90%EB%A6%AD%ED%84%B0-%ED%94%84%EB%A1%9C%ED%95%84-%EB%A7%8C%ED%99%94-%EC%9D%B4%EB%AF%B8%EC%A7%80-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4%EC%85%98.jpg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Stack(
              children: [
                Image(image: Image.network(url).image),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, right: 20),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(
                        CupertinoIcons.camera,
                        size: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("developer", style: textTheme().subtitle1),
              SizedBox(
                height: 10,
              ),
              Text("좌동 #3312", style: textTheme().subtitle2),
            ],
          )
        ],
      ),
    );
  }
}

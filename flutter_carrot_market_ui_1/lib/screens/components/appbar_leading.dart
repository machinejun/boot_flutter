import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_carrot_market_ui_1/theme.dart';

class AppbarLeading extends StatelessWidget {
  const AppbarLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("좌동", style: textTheme().subtitle1),
        Icon(CupertinoIcons.down_arrow),
      ],
    );
  }
}

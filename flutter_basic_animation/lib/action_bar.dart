import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AcctionBar extends StatefulWidget {
  const AcctionBar({Key? key}) : super(key: key);

  @override
  State<AcctionBar> createState() => _AcctionBarState();
}

class _AcctionBarState extends State<AcctionBar> {
  bool isclick = false;
  bool isDone = false;
  double _width = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      width: _width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.blue),
      child: Stack(children: [
        Row(
          children: [
            InkWell(
              onTap: () => _action(),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Icon(
                  Icons.abc,
                  size: 30,
                ),
              ),
            ),
            Visibility(
              visible: _width == 200,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Icon(
                  Icons.access_alarm,
                  size: 30,
                ),
              ),
            ),
            Visibility(
              visible: _width == 200,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Icon(
                  Icons.access_alarm,
                  size: 30,
                ),
              ),
            ),
            Visibility(
              visible: _width == 200,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Icon(
                  Icons.access_alarm,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }

  _action() {
    setState(() {
      _width = (isclick == true ? 50 : 200);
    });
    if (isclick == true) {
      isclick = false;
    } else {
      isclick = true;
    }
  }
}

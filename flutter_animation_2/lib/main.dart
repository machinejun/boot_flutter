import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "animaiton 2",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('temp1'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.tightForFinite(),
        child: Center(
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                width: isOpen ? 240 : 48,
                height: 48,
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.orange[100],
                ),
              ),
              Container(
                width: 40,
                margin: const EdgeInsets.only(left: 4.0, top: 4.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: AnimatedCrossFade(
                  firstChild: IconButton(
                    onPressed: () => _changeOpenType(),
                    icon: const Icon(CupertinoIcons.bitcoin),
                  ),
                  secondChild: IconButton(
                      onPressed: () => _changeOpenType(),
                      icon: Icon(CupertinoIcons.add_circled)),
                  crossFadeState: !isOpen
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 300),
                ),
              ),
              AnimatedOpacity(
                opacity: isOpen ? 1 : 0,
                duration: Duration(milliseconds: 400),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 4.0),
                  child: Container(
                    width: 240,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.hand_thumbsdown),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.heart),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              Icon(CupertinoIcons.arrow_uturn_left_circle_fill),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _changeOpenType() {
    return setState(() {
      isOpen = !isOpen;
    });
  }
}

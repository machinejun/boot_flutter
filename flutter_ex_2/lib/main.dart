import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("welcome to flutter"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            ChangeStarScore(),
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
    _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
    _buildButtonColumn(Colors.blue, Icons.share, "SHARE")
  ],
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: color)),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class ChangeStarScore extends StatefulWidget {
  const ChangeStarScore({Key? key}) : super(key: key);

  @override
  State<ChangeStarScore> createState() => _ChangeStarScoreState();
}

class _ChangeStarScoreState extends State<ChangeStarScore> {
  int score = 0;

  @override
  void initState() {
    score = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => setState(() {
            score ++;
          })),
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text("Oeschinen Lake Campground",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text("Kandersteg, Switzerland",
                    style: TextStyle(color: Colors.grey[500]))
              ],
            )),
            const Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text(score.toString())
          ],
        ),
      ),
    );
  }
}

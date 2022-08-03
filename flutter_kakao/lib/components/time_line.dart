import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key, required this.dateText}) : super(key: key);

  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey[400],
        ),
        child:
            Text(dateText, style: TextStyle(color: Colors.white, fontSize: 15)),
      ),
    );
  }
}

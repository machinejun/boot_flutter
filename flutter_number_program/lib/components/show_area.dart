import 'package:flutter/material.dart';

class ShowArea extends StatelessWidget {
  const ShowArea({Key? key, required this.check, this.num}) : super(key: key);

  final int? num;
  final String check;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Result <${num ?? ""}> : ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 15),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(check,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}

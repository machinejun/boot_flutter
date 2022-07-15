import 'package:flutter/material.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 200),
            Logo(title: "Care Soft"),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Get Started"))
          ],
        ),
      ),
    );
  }
}

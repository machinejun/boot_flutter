import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage()
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo,
      body: SafeArea( // 자동으로 영역 확인 후 배치
        child: Column(
          children: [
            SizedBox( // 크기를 지정하거나 공백을 지정할 때 사용
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Woman",
                     style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                    Spacer(),
                    Text("Kids",
                     style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                    Spacer(),
                    Text("Shoes",
                     style: TextStyle(fontWeight: FontWeight.bold)
                     ),
                    Spacer(),
                    Text("Bag",
                     style: TextStyle(fontWeight: FontWeight.bold)
                     )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset("assets/bag.jpeg",
              fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 2, // 공백을 만드는데 사용
            ),
            Expanded(
              child: Image.asset("assets/cloth.jpeg"
              , fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}

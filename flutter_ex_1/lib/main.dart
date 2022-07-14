import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/cloth.jpeg"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text("dsfsdjlkdsjflsdjfsdsdfsd",
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                    ),
                                ),
                                Text("sdfsdfsdsdfsdsdfsdfsdfaasdasd",
                                style: TextStyle(
                                  color: Colors.grey
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 24.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, right: 5),
                            child: Text("41"),
                          )
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    const Icon(
                                      Icons.call,
                                      color: Colors.blue,
                                      size: 40,
                                      ),
                                      Text(
                                        "CAll",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20 
                                        ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    const Icon(
                                      Icons.route,
                                      color: Colors.blue,
                                      size: 40,
                                      ),
                                      Text(
                                        "ROUTE",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20 
                                        ),)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    const Icon(
                                      Icons.share,
                                      color: Colors.blue,
                                      size: 40,
                                      ),
                                      Text(
                                        "SHARE",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20 
                                        ),)
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("asdasdasasdasdasdsdasdasdasasdasdasdasdasdasaasdasdasdasdasdasdasdasdasdsdasdasdasdasdasdasdasdasdasdasasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd"),
                      )
                    ]
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

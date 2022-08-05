import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/component/product_item.dart';
import 'package:flutter_carrot_ui/models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            const Text("좌동"),
            const SizedBox(
              width: 4.0,
            ),
            const Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.search,
              )),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: products.length),
    );
  }
}

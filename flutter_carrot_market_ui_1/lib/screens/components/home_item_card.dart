import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/models/product.dart';
import 'package:flutter_carrot_market_ui_1/screens/components/home_item_icon.dart';
import 'package:flutter_carrot_market_ui_1/screens/components/home_item_text.dart';

class HomeItemCard extends StatelessWidget {
  HomeItemCard({Key? key, required this.product}) : super(key: key);

  Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                  height: 150,
                  image: NetworkImage(product.urlToImage),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Flexible(
            flex: 2, fit: FlexFit.tight, child: HomeItemText(product: product)),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: SizedBox(
            height: 150,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  HomeItemIcon(
                      icon: CupertinoIcons.chat_bubble_2,
                      count: product.commentCount),
                  HomeItemIcon(
                      icon: CupertinoIcons.heart, count: product.heartCount),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

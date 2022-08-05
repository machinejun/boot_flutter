import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/font_theme.dart';
import 'package:flutter_carrot_market_ui_1/models/product.dart';

class HomeItemText extends StatelessWidget {
  HomeItemText({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: subtitle1(Colors.black)),
        Text("${product.address}.${product.publishedAt}",
            style: body2(Colors.grey)),
        Text(
          "${product.price.toString()}원",
          style: subtitle2(Colors.black),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_carrot_ui/models/product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 120,
              width: 150,
              child: Image(image: NetworkImage(product.urlToImage)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Column(
              children: [
                Text(
                  product.title,
                ),
                Text(product.author),
                Row(
                  children: [Text(product.address), Text(product.publishedAt)],
                ),
                Text("${product.price}")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(FontAwesomeIcons.handsBubbles),
                Text("${product.commentCount}"),
                Icon(FontAwesomeIcons.heart),
                Text("${product.heartCount}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

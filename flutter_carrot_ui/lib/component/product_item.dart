import 'package:flutter/cupertino.dart';

import 'package:flutter_carrot_ui/models/product.dart';

import '../screens/components/product_detail.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(product.urlToImage,
                width: 115, height: 115, fit: BoxFit.cover),
          ),
          SizedBox(width: 16.0),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProductDetail(product: product),
          )),
        ],
      ),
    );
  }
}

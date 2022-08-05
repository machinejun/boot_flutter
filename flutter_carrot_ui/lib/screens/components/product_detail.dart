import 'package:flutter/cupertino.dart';

import 'package:flutter_carrot_ui/models/product.dart';
import 'package:flutter_carrot_ui/theme.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: textTheme().bodyText1),
        const SizedBox(
          height: 4.0,
        ),
        Text('${product.address} ⊙ ${product.publishedAt}'),
        const SizedBox(
          height: 4.0,
        ),
        Text('${format(product.price)}원', style: textTheme().headline2),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
                visible: product.commentCount > 0,
                child: _buildIcons(
                    product.commentCount, CupertinoIcons.chat_bubble_2)),
            const SizedBox(width: 8.0),
            Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(product.heartCount, CupertinoIcons.heart))
          ],
        )
      ],
    );
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 14.0,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text('$count')
      ],
    );
  }
}

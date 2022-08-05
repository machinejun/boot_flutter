import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/models/product.dart';
import 'package:flutter_carrot_market_ui_1/screens/components/home_item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: products.length,
        itemBuilder: (context, index) =>
            HomeItemCard(product: products[index]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_1/models/product.dart';

class HomeItemIcon extends StatelessWidget {
  HomeItemIcon({Key? key, required this.icon, required this.count})
      : super(key: key);

  final IconData icon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 12),
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}

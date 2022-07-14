import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "All"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "burger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "pizza")
        ],
      ),
    );
  }

  // 재사용할 수 있는 메서드 만들기
  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container( // 존재하지 않는 컴포너트 만들어 꾸밀려고 할때 컨테이너 사용
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          const SizedBox(
            height: 5
          ),
          Text(text, style: const TextStyle(color: Colors.black87)),
        ]),
    );
  }
}

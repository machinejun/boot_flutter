import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_1/components/receipe_list_item.dart';
import 'package:flutter_recipe_1/components/receipe_menu.dart';
import 'package:flutter_recipe_1/components/receipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _BuildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start, // 주축방향의 수직방향 제어
          children: [
          RecipeTitle(),
          RecipeMenu(),
          RecipeListItem(imageName: "burger", title: "made burger"), // 플러터는 영역에 벗어나면 경고 뜬다
          RecipeListItem(imageName: "coffee", title: "made coffee"),
          RecipeListItem(imageName: "pizza", title: "made pizza")
        ]),
      ),
      // leading, title, actions 순으로 배치
    );
  }

  AppBar _BuildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        const Icon(CupertinoIcons.search, color: Colors.black
         ),
        const SizedBox(width: 15),
        const Icon(CupertinoIcons.heart, color: Colors.redAccent
        ),
        const SizedBox(width: 15)
      ],
    );
  }
}

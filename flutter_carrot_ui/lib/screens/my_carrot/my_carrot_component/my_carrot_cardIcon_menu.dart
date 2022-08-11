import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/icon_menu.dart';
import 'package:flutter_carrot_ui/theme.dart';

class CardIconMenu extends StatelessWidget {
  const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);

  final List<IconMenu> iconMenuList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
              iconMenuList.length,
              (index) => _buildMenuBar(
                  iconMenuList[index].iconData, iconMenuList[index].title)),
        ),
      ),
    );
  }

  Widget _buildMenuBar(IconData iconData, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(iconData, size: 17),
          const SizedBox(width: 20),
          Text(
            title,
            style: textTheme().subtitle1,
          )
        ],
      ),
    );
  }
}

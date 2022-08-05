import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/screens/my_carrot/card_items_data.dart';
import 'package:flutter_carrot_ui/theme.dart';

class MyCarrotProfileCard extends StatelessWidget {
  const MyCarrotProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: List.generate(
                items1.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: _buildListItem(
                          items1[index].icondata, items1[index].text),
                    )),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(IconData iconData, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

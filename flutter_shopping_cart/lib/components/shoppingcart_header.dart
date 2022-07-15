import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;
  List<String> selectedPic = [];

  @override
  void initState() {
    selectedPic = [
      "assets/p1.jpeg",
      "assets/p2.jpeg",
      "assets/p3.jpeg",
      "assets/p4.jpeg"
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildHeaderPic(),
      Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderSelectorBtn(0, Icons.directions_bike),
            _buildHeaderSelectorBtn(1, Icons.motorcycle),
            _buildHeaderSelectorBtn(2, Icons.car_rental_outlined),
            _buildHeaderSelectorBtn(3, Icons.airplanemode_active),
          ],
        ),
      ),
    ]);
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(selectedPic[selectedId], fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildHeaderSelectorBtn(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(
          color: id == selectedId ? kAccentColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: IconButton(
          onPressed: () => setState(() {
              selectedId = id;
            }),
          icon: Icon(mIcon, color: Colors.black)),
    );
  }
}

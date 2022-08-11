import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_carrot_ui/models/neighboodLife_card.dart';
import 'package:flutter_carrot_ui/screens/neighborhood_life/neighborhood_component/neighborhood_card.dart';
import 'package:flutter_carrot_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeighborHoodLifeScreen extends StatelessWidget {
  NeighborHoodLifeScreen({Key? key, required this.itemList}) : super(key: key);

  List<NeighBoodLifeCard> itemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("동네 생활", style: textTheme().headline1),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.folderPlus)),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bell)),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildNLifeHeaderBar(
              "https://media.timeout.com/images/103580790/750/422/image.jpg",
              "이웃과 함께 만드는 봄 간식 지도 마음까지 따뜻해지는 봄 간식을 만나보세요"),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      NeighborHoodCard(cardItem: itemList[index]),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: itemList.length)),
        ],
      ),
    );
  }

  Widget _buildNLifeHeaderBar(String url, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(url, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  content,
                  style: textTheme().bodyText1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_ui/models/neighboodLife_card.dart';
import 'package:flutter_carrot_ui/screens/neighborhood_life/neighborhood_component/bottom_icon_box.dart';
import 'package:flutter_carrot_ui/theme.dart';

class NeighborHoodCard extends StatelessWidget {
  const NeighborHoodCard({Key? key, required this.cardItem}) : super(key: key);

  final NeighBoodLifeCard cardItem;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              _buildCardCategoryBox(cardItem.category, cardItem.writeAt),
              _buildCardProfileBox(cardItem.pofile),
              _buildCardContentBox(
                  cardItem.contentImgUrl ?? "", cardItem.content),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(color: Colors.grey, height: 0.5, thickness: 0.5),
              ),
              _buildCardBottomBox(cardItem.replyCount)
            ],
          ),
        ));
  }

  Widget _buildCardCategoryBox(String category, String writeAt) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.grey[200],
            child: Text(
              category,
              style: textTheme().bodyText2,
            ),
          ),
          Text(writeAt, style: textTheme().bodyText2)
        ],
      ),
    );
  }

  Widget _buildCardProfileBox(NeighboorLifePofile profile) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    profile.profileImgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(profile.nickName, style: textTheme().subtitle1),
              const SizedBox(
                width: 5,
              ),
              Text("${profile.address} 인증 ${profile.certificationCount}회",
                  style: textTheme().subtitle2)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCardContentBox(String url, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(content, style: textTheme().bodyText2),
        const SizedBox(height: 15),
        Visibility(
          visible: url != "",
          child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(url, fit: BoxFit.cover)),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildCardBottomBox(int replyCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          BottomIconBox(iconData: CupertinoIcons.smiley, text: "공감하기"),
          const SizedBox(width: 20),
          BottomIconBox(
              iconData: CupertinoIcons.reply,
              text: "댓글쓰기",
              subText: replyCount.toString()),
        ],
      ),
    );
  }
}

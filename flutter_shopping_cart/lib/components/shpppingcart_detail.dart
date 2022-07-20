import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCartDetail extends StatelessWidget {
  const ShopCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailNameAndPrices(),
              _buildDetailRatingAndRevieCount(),
              _buldDetailColorOption(),
              _buildDetailButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDetailNameAndPrices() {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Urban Soft AL 10.0",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("\$699",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
        ],
      ),
    ),
  );
}

Widget _buildDetailRatingAndRevieCount() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
    child: Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Spacer(), // 특정 공간으로 나누고 싶다면 사용하면 된다.
        Text("review"),
        Text("(26)", style: TextStyle(color: Colors.blue))
      ],
    ),
  );
}

Widget _buldDetailColorOption() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color Options"),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildDetailIcon(Colors.black),
            _buildDetailIcon(Colors.green),
            _buildDetailIcon(Colors.orange),
            _buildDetailIcon(Colors.grey),
            _buildDetailIcon(Colors.white),
          ],
        )
      ],
    ),
  );
}

Widget _buildDetailIcon(Color mColor) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Stack(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2),
              shape: BoxShape.circle),
        ),
        Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              // 둥글게 만들고 싶은 위젯에다가 적용
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ))
      ],
    ),
  );
}

Widget _buildDetailButton(BuildContext context) {
  return Align(
    // aligment 속성이 있는데 기본값이 center 이다.
    child: TextButton(
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text("장바구니에 담으시겠습니까?"),
            actions: [
              CupertinoDialogAction(
                child: Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      },
      child: Text('Add to Cart', style: TextStyle(color: Colors.white)),
      style: TextButton.styleFrom(
        // 명명된 생성자 (java 스태틱 메서드) --> 텍스트 버튼 꾸미기
        backgroundColor: Colors.orange[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        minimumSize: Size(300, 50),
      ),
    ),
  );
}

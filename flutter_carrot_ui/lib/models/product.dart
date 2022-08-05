import 'package:intl/intl.dart';

class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  String price;
  int heartCount;
  int commentCount;

  static String getImgeUrl(String number) {
    String prefix =
        "https://github.com/flutter-coder/ui_images/blob/master/carrot_product_$number.jpg?raw=true";
    return prefix;
  }

  Product(
      {required this.title,
      required this.author,
      required this.address,
      required this.urlToImage,
      required this.publishedAt,
      required this.heartCount,
      required this.commentCount,
      required this.price});
}

format(String prcie) {
  var Nformat = NumberFormat('#,###');
  return Nformat.format(int.parse(prcie));
}

List<Product> products = [
  Product(
      title: "니트 조끼",
      author: "손님1",
      address: "좌동",
      urlToImage: Product.getImgeUrl("1"),
      publishedAt: "2시간 전",
      commentCount: 3,
      heartCount: 8,
      price: '35000'),
  Product(
      title: "먼나라 이웃나라 12",
      author: "손님2",
      address: "중동",
      urlToImage: Product.getImgeUrl("2"),
      publishedAt: "3시간 전",
      commentCount: 1,
      heartCount: 3,
      price: '18000'),
  Product(
      title: "캐나다구스 패딩조",
      author: "손님3",
      address: "우동",
      urlToImage: Product.getImgeUrl("3"),
      publishedAt: "1일 전",
      commentCount: 12,
      heartCount: 0,
      price: '15000'),
  Product(
      title: "유럽 여행",
      author: "손님3",
      address: "우동",
      urlToImage: Product.getImgeUrl("4"),
      publishedAt: "3일 전",
      commentCount: 11,
      heartCount: 4,
      price: '15000'),
  Product(
      title: "가죽 파우치",
      author: "손님4",
      address: "우동",
      urlToImage: Product.getImgeUrl("5"),
      publishedAt: "1주일 전",
      commentCount: 4,
      heartCount: 7,
      price: '95000'),
];

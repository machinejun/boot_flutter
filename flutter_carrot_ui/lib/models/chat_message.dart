class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUrl;

  ChatMessage(
      {required this.sender,
      required this.profileImage,
      required this.location,
      required this.sendDate,
      required this.message,
      this.imageUrl});
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
      sender: "당근이",
      profileImage: "https://placeimg.com/200/100/people/grayscale",
      location: "진구 중앙동",
      sendDate: "1일전",
      message: "다양한 물품이 많아요"),
  ChatMessage(
      sender: "flutter",
      profileImage:
          "https://media.istockphoto.com/photos/boy-communicating-with-teacher-and-friends-while-teaching-video-at-picture-id1380036975?b=1&k=20&m=1380036975&s=170667a&w=0&h=nDsT3az7IadVlhqnCr_zFMe63ZArxFgYvZjAiuAMZoY=",
      location: "중동",
      sendDate: "2일전",
      message: "안녕하세요 ~~ 물품 문의 합니다.",
      imageUrl:
          "https://media.istockphoto.com/photos/gift-boxes-on-blue-table-brown-wall-background-picture-id1394906709?b=1&k=20&m=1394906709&s=170667a&w=0&h=HDGxTQpwO4gxPRUbs9z63Z6TAcIU-aSzM6sVYv6UJMY="),
];

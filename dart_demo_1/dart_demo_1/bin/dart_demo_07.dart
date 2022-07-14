void main(List<String> args) {
  Map<String, dynamic> user = {
    "id": 1,
    "username": "tenco"
    };
  // 맵은 {}를 사용한다.

  print(user);
  // 맵의 key으로 value를 찾을 때 [] 를 사용한다.
  print(user["id"]);
  print(user["username"]);
  print(user["age"]);
}

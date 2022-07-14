class Animal {
  final String name;
  const Animal(this.name);
}

void main(List<String> args) {
  Animal a1 = const Animal("사자");
  //a1.name = "호랑이";
  // final은 값이 정해졌기 때문에 다시 수정하지 못한다.
  // 값이 같으면 같은 친구가 되고 값이 다르면 다른 친구가 된다.
  
  Animal a2 = const Animal("사자");

  print(a1.hashCode);
  print(a2.hashCode);
}

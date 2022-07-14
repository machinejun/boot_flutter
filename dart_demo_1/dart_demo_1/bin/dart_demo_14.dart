class Person {
  String? name;
  int? age;

  Person({this.name, this.age});
  // 선택적 매개변수라서 변수가 들어올지 보장할 수 없다.
  // 1. nullSafety 선언
  // 2. required 선언
  // 3. default 값을 선언

}

void main(List<String> args) {
  Person p1 =
      Person(name: "홍길동", age: 100); // 키값을 정해줘야 한다. --> 순서를 바꾸더라도 올바른 값이 보장된다.
  Person p2 = Person(name: "임꺽정");
  print(p2.age);

  // null 대체 연산자 사용( null 인경우 = 1을 넣어라)
  p2.age = 10;
  int mAge = p2.age ?? 1;
  print(mAge);
}

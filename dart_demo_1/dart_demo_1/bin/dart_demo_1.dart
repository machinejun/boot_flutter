class Police {
  String name;
  int age;

  Police(this.name, this.age);
}

class Chef {
  String name;

  Chef(this.name);

  void cook() {
    print("$name 요리를 시작합니다.");
  }
}

class Person {
  String name;
  int money;

  Person({required this.name, this.money = 1000});
}

void main(List<String> arguments) {
  Chef chef = Chef("이연복");
  chef.cook();

  Police police = Police("고길동", 50);
  print("${police.name} 의 나이는 ${police.age} 입니다");

  Person p1 = Person(name: "홍길동");
  Person p2 = Person(money: 5000, name: "임꺽정");
  Person p3 = Person(money: 20000, name: "유관순");
  // 선택적 매개변수 사용 -> 키값을 지정해 주어야 한다. 따라서 순서 상관 X

  print("${p1.name} 의 재산은 ${p1.money} 입니다");
  print("${p2.name} 의 재산은 ${p2.money} 입니다");
}



// class Person { // nullable
//   String? name;
//   int? money;

//   Person({this.name, this.money = 0 });
// }



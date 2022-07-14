void main(List<String> args) {
  // 동적 바인딩
  start(Cat()); // 메모리에 객체가 올락나 dog의 sound 메서드가 호출되었다.
  start(Dog()); // 메모리에 객체가 올락나 cat의 sound 메서드가 호출되었다.
  start(Fish()); // 메모리에 객체가 올락나 fish의 sound 메서드가 호출되었다.
}

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("멍멍멍");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("야옹~~");
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔 뻐끔");
  }
}

void start(Animal x) {
  x.sound();
}

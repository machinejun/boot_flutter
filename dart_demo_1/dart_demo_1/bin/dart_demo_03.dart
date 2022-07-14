void main(List<String> args) {
  CheeseBuger buger = CheeseBuger("치즈버거");
  print("${buger.name} ");
}

class Buger {
  final String? name;
  Buger(this.name) { // final이 반드시 초기화 될수 있다라는 보장
    // 부모 생성자
    print("buger");
  }
}

class CheeseBuger extends Buger {
  CheeseBuger(String name) : super(name) { 
    // 자식객체가 final이 있는 부모객체를 상속 받을 때는 final 값을 반드시 초기화 해줄것이라는 것을 보장해 주어야 한다.
    // ":" = 이니셜라이저 키워드를 사용해 주어야 한다.
    
    // 자식 생성자 -> 실행되면 내부 스택으로 들어있는 print가 먼저 실행되는 것이
    // 아니라 부모 생성자 내부스택인 print가 먼저 실행된다.
    //print("Cheese Buger");

    //super.name = name; // 슈퍼는 자식이 부모를 참조할 수 있는 키워드 입니다.
    // 클래스 final 상속 할수 없다
    // 메서드 final 오버로드 할수 없다.

    // const 컴파일 시점에 초기화
  }
}

/* 
Mixin : 여러 클래스 계층에서 클래스 코드를 재사용하는 방법
>> 다중 상속 문제를 해결 + 컴퍼지션을 사용하지 않고 다른 클래스 코드를 재사용할수 있게 해준다.
*/

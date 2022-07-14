import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Chef cf = Chef("고길동")..cook();
  // c1.cook(); 한줄로 처리 ( 계단식 표기법)
  // .. 연산자를 사용하면 코드 한줄로 객체를 변수로 넘겨주면서 
  // 객체가 가진 함수를 호출할 수 있는 표기법입니다..

}

class Chef {
  String name;

  Chef(this.name);

  void cook() {
    print("$name 요리를 시작합니다.");
  }
  // 상속은 부모가 가진 상태와 행위를 자식이 물려받는 것과 동시에 다형성이 성립해야한다.
  // 다형성 : 여러가지 형태를 가질 수 있는 능력
  
}

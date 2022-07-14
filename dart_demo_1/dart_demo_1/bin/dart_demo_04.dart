class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class Engine {
  int power = 5000;
}
// if JAVA
class BMW2 {
  Engine engine;
 
  BMW2(this.engine);
}

class BMW with Engine, Wheel {
}


void main(List<String> args) {

  BMW2 bmw2 = new BMW2(new Engine());
  print(bmw2.engine.power);

  BMW bmw = new BMW();
  print(bmw.power);
  print(bmw.wheelName);

}









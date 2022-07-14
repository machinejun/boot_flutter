import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {}; // set 계열도 {}로 표기한다.
  //Random class 사용
  Random random = Random();
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  print(lotto);
  List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList);
  
}

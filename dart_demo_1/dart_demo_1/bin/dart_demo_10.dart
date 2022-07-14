/*
  map 함수
  : 반복되는 값을 하나씩 변형하기 위해 사용합니다.
  : map 함수수는 lterator 타입을 리턴하기 때문에 toList로 변환해주는 것이 사용하기 편하다
  : 컬렉션에 담긴 데이터가 조금씩 변형 해야 할 때 사용

---------------------------------------
  where 함수
  : 조건에 따른 element를 가져오고 싶을 때

 */
void main(List<String> args) {
  var chobab = ["새우 초밥", "광어 초밥", "연어 초밥"];
  // map 함수는 무언가 변형(변경, 가공)을 해야 할때 사용하면 굉장히 편리하다.
  var chobabChange = chobab; // 얕은 복사 <---> 깊은 복사
  var chobabChange3 = [];
  chobabChange3.addAll(chobab);
  print(chobabChange);
  print(chobabChange3);
  chobabChange3.add("콤콤한 초밥");
  chobabChange.add("간장 새우 초밥");
  print(chobab);
  print("---------------------------------");

  var chobabChange2 = chobab.map((e) => "간장 소스+$e").toList();
  print(chobabChange2);
  print(chobab);
  print(chobabChange2.runtimeType);

  var sampleChobab = ["새우 초밥", "광어 초밥", "연어 초밥"];

  var chobabWhere = chobab.where((element) => element.contains("어")).toList();
  print(chobabWhere);
}

void main() {
  int i = 12;
  var name = 'la';
  // 무엇을 성택하든 나중에 변경될 수있다.
  // dart는 최대한 var을 사용하도록 원한다.
  // vardms 지역변수로 사용 타입 지정은 전역변수 및 설정에 밖는다.

  final name2 = 'nico';
  // final은 변경을 막는 타입 자바와 같음
  dynamic name3 = 123;
  name3 = true;
  // 다이나믹은 항상 이것만 사용하면 안되고 어떤 타입이나 값이 들어올지 모르는 것에 사용
  // var와 다르게 var는 한번 입력되면 타입을 알아서 지정하는데 dynamic은 타입상관없이 변경이 가능하다.
  // 다만 다트는 돕기위해 다이나믹을 사용할려면 is String, is int를 사용해서 사용하도록 한다.

  // const는 컴파일할때 절대 변경하지 않을값에 사용한다.
  // 예로들어 api key나 이런 지정값
  const api_key = 'asdfsjkfjkls';
  // final과 다른점은 final은 런타임중 만들어질수도 있다는점(이후를 말함, api 등 로직 중)
  // const는 무조건 알고 있어야 한다.

  // 널세이프티
  // 기본적으로 다트 변수들을 null될수 없고 할려면 뒤에 ?를 넣어야한다.
  String? age = '12';
  age = null;
  // age.isNotEmpty;
  age?.isNotEmpty;
  // 이렇게 널 세이프티 확인을 해야한다.

  // late
  // late는 final, var, String같은 것들 앞에 사용할 수 있는 수식어
  // late은 다트에게 아직 어떤 데이터가 올지 모른다고 말해주는것이다.
  late final String address;
  // 이것은 이후 명시될 값에 대해 사용되는 타입으로 좋은점은 만약 지정 안하고 하용시 에러를 발생한다.
  // 데이터가 없는지 확실히 명시해주므로 너무 좋다.
  // api를 호출 전에 뭔지는 모르지만 그 값을 필시 사용해야 한다면 late이 아주 효과적이다.
  print(address);
  address = '서울시';
  print(address);
}
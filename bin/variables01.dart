void main() {
  var name = 'JH';
  name = "재헌";

  // var은 클래스나 메소드 안에서는 지역변수를 선언할때 사용한다
  // String 같이 명시는 class 변수지정(전역변수), 설정 property 선언시 사용
  // 둘다 사용할 수 있지만 dart의 선호하는 방향이다.


  // dynamic
  var dm;
  dm = 12;
  dm = true;
  dm = "String";
  // 다이나믹은 모든것이 될수 있는 변수이다. var을 하고 지정안하거나 dynamic 타입을 주면 된다.
  // 플루터나 사용할때 많이 사용된다.
  if (dm is String){
    print("is String");
  } else if (dm is int) {
    print("is int");
  } else {
    print("noting");
  }
  // 다트는 정말 많은 메소드를 지원한다 예를들어 홀수, 짝수 확인도 가능하고 각각의 여러 조건을 확인 할 수 있다.


  // null safety
  // 개발자가 null을 탐조할 수 없게 하는것
  // 사용하면 런타임에러가 발생
  // 다트에서는 기본적으로 모두 none-nullable이다.
  // 타입뒤에 ?를 넣어주면 null이 가능하다.
  String nico = 'nico';
  // nico = null;
  if(nico != null) {
    nico.isNotEmpty;
  }

  String? jh = 'jh';
  jh = null;
  // jh.isNotEmpty;
  jh?.isNotEmpty;

  // final
  // 고정 상수를 만들려면
  final age = '나이';
  age = '이름';

  final String age2 = '나이';
  // 둘다 사용 가능하다


  // late
  // late는 var이나 final에 사용되는 변수이다.
  // final이지만 초기화를 안해줘도 되게 한다.
  late final String address;
  // 이후 api에서 입력받거나 받은 값을 넣을 수 있게 해중다
  address = '123';
  address = '456';
  // 입력받기전에 print등 사용할려 하다면 에러가 발생한다.왜냐면 값이 초기화되지 않았기 때문이다.

  // const
  // 기존 스크립트랑 살짝 다르다
  // final과 살짝 비슷하다.
  // 살짝 이해가 안가지만 컴파일전의 값을 다를때는 const를 사용
  // 완전히 하드코딩해서 final을  박을때 사용한다, 설정, 컴파일 등
  // 입력받은 값에서 변경하면 안될때, 계산한 값에서 변경하면 안될때 final을 사용한다.
  const name2 = 'nico';
}
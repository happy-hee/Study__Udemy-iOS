/*
***************************************************************************************
  [Protocol]
  * Protocol은 Swift의 기본 요소이며 어떤 것에도 의존하지 않는다.
***************************************************************************************  
*/
// [형태]
protocol MyProtocol {
  // Define requirements (이 프로토콜의 요구사항을 정의한다.)
}

struct MyStruct: MyProtocol {}
class MyClass: MyProtocol {}


// 여러 프로토콜을 채택해야 하는 경우
struct MyStructure: FirstProtocol, AnotherProtocal {
  // struct definition goes here
}
class MyClass2: SuperClass, FirstProtocol {
  // class definition goes here
}

/*
  ProtocolDemo 폴더 내에서 진행
*/
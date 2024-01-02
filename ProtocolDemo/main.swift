/*
***************************************************************************************
  [Protocol]
***************************************************************************************
*/
protocol CanFly {
  // 프로토콜 안의 fly 메서드는 중괄호{}를 사용하지 않는다.
  func fly()
}

class Bird {
  var isFemale = true

  func layEgg() {
    if isFemale {
      print("새가 알을 낳았습니다.")
    }
  }

  // 모든 곳에 사용되지 않길 바라는 메서드
  // func fly() {
  //   print("새가 날아올랐습니다.")
  // }
}

// 1) Bird를 상속받아서 만든 class Eagle
class Eagle: Bird, CanFly {
  // Eagle 에서만 사용 할 수 있는 메서드
  func soar() {
    print("독수리는 기류를 활용할 수 있습니다.")
  }

 // CanFly 프로토콜에 있는 fly 메서드 사용
  func fly() {
      print("독수리가 날아올랐습니다.")
  }
}

// 2) Bird를 상속받아서 만든 class Penguin
class Penguin: Bird {
  // Penguin 에서만 사용 할 수 있는 메서드
  func swim() {
    print("펭귄은 수영을 할 수 있습니다.")
  }
}

// 3) 비행 시연을 자주 하는 비행 박물관 struct
struct FlyingMuseum {
  // 모든 새들은 비행 할 수 있기때문에 대상에 Bird class를 넣는다.
  // func flyingDemo(flyingObject: Bird) {

  // 비행 박물관에서 비행 데모를 실행하려면 비행 물체가 필요하다.
  // 비행 물체를 CanFly로 넣는다.
  func flyingDemo(flyingObject: CanFly) {
    flyingObject.fly()
  }
}

// 4) 비행기 struct
struct Airplane: CanFly {
  // CanFly 프로토콜에 있는 fly 메서드 사용
  func fly() {
    print("비행기가 날았습니다.")
  }
}

// fly는 Bird class에서 상속받은 메서드 이기때문에 사용이 가능하지만 펭귄은 날 수 없는데... 
// => fly 메서드를 상속받지 않아야 한다!
myPenguin.fly()
// ***** 이처럼 class 상속을 받다보면 날아다니는 펭귄과 같은 의도하지 않은 결과를 초래할 수 있다. *****

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()

// myEagle은 CanFly 프로토콜을 채택하므로 museum의 flyingObject에 전달 할 수 있다.
museum.flyingDemo(flyingObject: myEagle) //독수리가 날아올랐습니다. ( myEagle의 CanFly 함수 실행 )

// myPenguin는 CanFly 프로토콜을 채택하지 않으므로 museum의 flyingObject에 전달할 수 없다.
// museum.flyingDemo(flyingObject: myPenguin) => Error!!

/*
  [정리]
  Bird 클래스에 CanFly 메서드가 있어서 상속받게되면
  독수리, 펭귄 등 Bird의 모든 하위 클래스에 상속이 된다.
  하지만 펭귄은 해당 메서드가 불필요한데도 해당 메서드를 가진다.

  반면 Bird의 하위 클래스가 아닌 Airplane 구조체는 CanFly 기능이 필요하지만
  상속 받을 수 없다.

  이런 경우를 위해 Protocol을 사용해서 CanFly 프로토콜을 만들고, 
  해당 기능이 필요한 모든 곳에서 CanFly 프로토콜을 채택 할 수 있다.

  * Struct 에서 사용하는 경우
  만약 여러 Protocol을 채택하는 경우, 쉼표로 구분하여 하나씩 추가한다.
  ex) struct MyStructure: FirstProtocol, AnotherProtocol {}

  * Class 에서 사용하는 경우 (SuperClass에서 상속 할 수 있어야 하는 경우)
  이 경우는 SuperClass를 먼저 쓰고, 쉼표로 구분하여 Protocol을 추가한다.
  ex) class MyClass: SuperClass, FirstProtocol, AnotherProtocol {}
*/
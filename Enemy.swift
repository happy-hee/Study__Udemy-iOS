/*
***************************************************************************************
  [Enemy - Class]
***************************************************************************************  
*/

/*

// Swift에서 class로 된 파일을 만들 시 파일의 이름과 클래스의 이름이 일치해야 함
// 적 Class
class Enemy {
  // 속성
  // var health = 100 // 생명력
  // var attackStrength = 10 // 적 공격력

  // class는 초기화 프로그램(init)도 있으므로 기본값을 삭제하고 데이터 타입으로만 간단히 지정할 수 있다.
  var health: Int
  var attackStrength: Int
  // 초기화
  init(health: Int, attackStrength: Int){
    self.hearth = health
    self.attackStrength = attackStrength
  }

  // 받은 피해
  func takeDamage(amount: Int) {
    health = health - amount
  }

  // 움직임
  func move() {
    print("Walk forwards")
  }

  // 공격
  func attack() {
    print("Land a hit, does \(attackStrength)")
  }
}

/*
  구조체(struct)와 다른 점
  class는 SuperClass를 상속받는 기능이 있다.
*/

*/

/*
***************************************************************************************
  [Enemy - Struct]
*************************************************************************************** 
*/

struct Enemy {
  // 속성
  // var health = 100 // 생명력
  // var attackStrength = 10 // 적 공격력

  // class는 초기화 프로그램(init)도 있으므로 기본값을 삭제하고 데이터 타입으로만 간단히 지정할 수 있다.
  var health: Int
  var attackStrength: Int
  // 초기화
  init(health: Int, attackStrength: Int){
    self.hearth = health
    self.attackStrength = attackStrength
  }

  // 받은 피해
  mutating func takeDamage(amount: Int) {
    health = health - amount
  }

  // 움직임
  func move() {
    print("Walk forwards")
  }

  // 공격
  func attack() {
    print("Land a hit, does \(attackStrength)")
  }
}
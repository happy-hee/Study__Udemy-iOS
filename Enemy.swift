/*
***************************************************************************************
  [Enemy Class]
***************************************************************************************  
*/
// Swift에서 class로 된 파일을 만들 시 파일의 이름과 클래스의 이름이 일치해야 함
// 적 Class
class Enemy {
  // 속성
  var hearth = 100 // 생명력
  var attackStrength = 10 // 적 공격력

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
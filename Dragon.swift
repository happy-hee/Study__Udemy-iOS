/*
***************************************************************************************
  [Enemy를 통해 만들어진 적]
***************************************************************************************  
*/
// Enemy 로 만들어진 적(Dragon)
// Enemy의 모든 것을 상속받는다
class Dragon: Enemy {
  var wingSpan = 2

  func talk(speech: String) {
    print("Says: \(speech)")
  }

  // move 메서드 재정의(override)
  override func move() {
    print("Fly forwards")
  }

  // attack 메서드 재정의(override)
  override func attack() {
    // super: Enemy 클래스 클래스를 참조하는 키워드
    super.attack() // attack을 실행했을 때 Enemy에 있는 attack도 실행한다.
    print("Spits fire, does 10 damage")
  }
}
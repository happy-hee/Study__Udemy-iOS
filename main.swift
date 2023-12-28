/*
***************************************************************************************
  [메인화면: Enemy를 통해 만들어진 적들이 있다.]
***************************************************************************************  
*/
// class 초기화는 class 이름 뒤에 괄호를 쳐주면 된다. Enemy()

// Enemy class로 만든 적(skeleton)
let skeleton = Enemy()
print(skeleton.hearth) // 100
skeleton.move()
skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

// Enemy class로 만든 적(Dragon)
let dragon = Dragon()
dragon.wingSpan = 5 // 드래곤 클래스 안에서만 존재하는 사용자 지정 속성
dragon.hearth = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!!!")
dragon.move()
dragon.attck()
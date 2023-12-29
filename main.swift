/*
***************************************************************************************
  [메인화면: Enemy를 통해 만들어진 적들이 있다.]
***************************************************************************************  
*/

/*
***************************************************************************************
  class를 사용한 Enemy
***************************************************************************************  
*/
// class 초기화는 class 이름 뒤에 괄호를 쳐주면 된다. Enemy()

// Enemy class로 만든 적(skeleton)
  // let skeleton1 = Enemy(health: 100, attackStrength: 10)
// skeleton1을 skeleton2에 복사한 것처럼 보이지만,
// 그저 같은 참조를 하고 있을 뿐이다.(동일한 객체를 참조함)
  // let skeleton2 = skeleton1

  // skeleton1.takeDamage(amount: 10)
  // print(skeleton2.health) // 90
// => skeleton1만 10을 뺐을 뿐인데 skeleton2도 값이 빠지는 이유?
// 클래스는 '참조'로 전달되기 때문


/*
// Enemy class로 만든 적(Dragon)
  let dragon = Dragon()
  dragon.wingSpan = 5 // 드래곤 클래스 안에서만 존재하는 사용자 지정 속성
  dragon.health = 15
  dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!!!")
  dragon.move()
  dragon.attck()
*/

/*
***************************************************************************************
  struct 를 사용한 Enemy
***************************************************************************************  
*/

var skeleton1 = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton1

skeleton1.takeDamage(amount: 10)
skeleton1.takeDamage(amount: 10)
skeleton2.takeDamage(amount: 10)

// struct 를 통한 복사이기 때문에 각각 다른 개체를 참조한다.
print(skeleton1.health) // 80
print(skeleton2.health) // 90
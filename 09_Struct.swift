/*
***************************************************************************************
  [Structures(구조체), Methods and Properties]
***************************************************************************************  
*/
/*
  관련 속성이나 행동을 수집하는 그룹의 데이터 타입
  ex) 퀴즈 문제와 답

  [형태]
  strunc MyStruct { // 구조체 생성
    func myFunct() {} // 메서드
  } 
  MyStruct() // 구조체 사용
*/

// 마을 struct(구조체)
// struct Town {
//   // 프로퍼티
//   let name = "V town" // 마을 이름
//   var citizens = ["happy", "alban", "sonny"] // 시민
//   let resources = ["Grain" : 100, "Ore" : 50  ,"Wool" : 75] // 자원

//   // 메서드
//   func fortify() {
//     print("방어력이 올랐습니다")
//   }
// }

// // 마을 구조체를 사용해 만든 실제 마을
// var myTown = Town()

// // 접근
// print(myTown.citizens) // ["happy", "alban", "sonny"]
// print(myTown.resources["Grain"]!) // Optional(100)

// // 추가
// myTown.citizens.append("uki")
// print(myTown.citizens) // ["happy", "alban", "sonny", "uki"]

struct Town {
  // 프로퍼티
  let name : String
  var citizens : [String]
  let resources : [String : Int]

  // 초기화 init(parameter) {}
  init(name: String, citizens: [String], resources: [String:Int]) {
    // self: 초기화된 개체 (구조를 가리킴)
    self.name = name
    self.citizens = citizens
    self.resources = resources
  }

  // 메서드
  func fortify() {
    print("방어력이 올랐습니다")
  }
}

// 마을 구조체를 사용해 만든 실제 마을
var anotherTown = Town(name: "Nameless Town", citizens: ["alban"], resources: ["Apples":100])
anotherTown.citizens.append("sonny")

//마을 구조체를 사용해 만든 실제 유령 마을
var gostTown = Town(name: "Gost Town", citizens: [], resources: ["Trees":1])
gostTown.fortify()

print(anotherTown) // Town(name: "Nameless Town", citizens: ["alban", "sonny"], resources: ["Apples": 100])
print(gostTown) // Town(name: "Gost Town", citizens: [], resources: ["Trees": 1])


/*
[Coding Exercise] Structures
You are about to create the next big social networking app, exclusive(독점적인) to business leaders called KingPin.
*/
unc exercise() {

    // Define the User struct here
    // This struct needs to hold onto the user's name, email (optional), number of followers, and whether they are active or not. 
    struct User {
      let name: String
      var email: String?
      var followers: Int
      var isActive: Bool

      // Initialise a User struct here
      init(name: String, email: String, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
      }


      // The Struct also needs to have a method called logStatus(). 
      // If the user is active, the method needs to print "XXX is working hard". 
      // Otherwise, it needs to print "XXX has left earth" (where XXX is the name of the user).
      func logStatus() {
        if isActive {
          print("\(name) is working hard")
        } else {
          print("\(name) has left earth")
        }
      }
    }

    // 3. After you have defined the struct, create a user with the name "Richard" with 0 followers who not active.
    var richard = User(name: "Richard", email: "", followers: 0, isActive: false)
    
    // Then print the status of this user to the console with logStatus().
    richard.logStatus()
    
    // To succeed in this challenge, the console will need to read:
    // Richard has left earth



    /* Diagnostic code (i.e., Challenge Hint):
    Elon is working hard
    Contacting Elon on elon@tesla.com ...
    Elon has 2001 followers
    Elon has left earth */

    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
}
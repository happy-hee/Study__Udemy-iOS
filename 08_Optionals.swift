/*
***************************************************************************************
  [Optionals]
***************************************************************************************  
*/
 // var play1Username: String = nil // Error

 var play1Username: String? = nil
 play1Username = "Alban"
 
 // print(play1Username) // Optional("Alban")

 // 옵셔널인 부분을 !로 강제 언래핑
 print(play1Username!) // "Alban"

 play1Username = nil
 // 만약 nil 인 상태에서 !로 강제 언래핑을 하려고 하면 에러가 발생한다.
 // -> 아무것도 없는 상태에서 뭔가를 하려고 하기 떄문이다.(여기서는 언래핑)
 // print(play1Username!) // Error

// 위와 같은 경우를 방지하기 위해 if문을 사용한다.
 if play1Username != nil { // nil 이면 실행되지 않음
  print(play1Username!)  
 }


/*
[Coding Exercise] Optionals
If you have a dictionary with 3 student names and their test scores, can you print the highest score?
// 만약 당신이 학생 3명의 이름과 시험 점수가 있는 dictionary를 가지고 있다고 할 때, 가장 최고 점수를 출력 할 수 있나요?

e.g. if
studentsAndscores = ["Amy": 88, "James": 55, "Helen": 99]
Then your function should print 99.

But you don't know what the scores are, so your program has to handle all possibilities!
// 하지만 점수가 무엇인지 모르므로 프로그램은 모든 가능성을 처리해야 합니다.
Hint: When you get the value out of a dictionary using a key, the value that comes out is an Optional!
// 힌트: 키를 사용하여 사전에서 값을 가져올 때 나오는 값은 Optional입니다!
Be sure to test your code using sample inputs and try out your code here: https://repl.it/@appbrewery/optionals-exercise#main.swift
*/

//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
  //Write your code here.
  var amyScores = scores["Amy"]
  var jamesScores = scores["James"]
  var helenScores = scores["Helen"]

  if (amyScores != nil && jamesScores != nil && helenScores != nil) {
    // scores 의 value들 중 가장 높은 값
    var maxScore = scores.values.max()!
    print(maxScore)
  }
}



/*
***************************************************************************************
  [Optional Binding, Chaining, and the Nil Coalescing Operator]
***************************************************************************************  
*/
/*
1. Force Unwrapping  // 강제 언래핑 
   강제적으로 언래핑. 위험성이 있으므로 가능하면 사용하지 않는다.
*/
optional!


/*
2. Check for nil value // nil 값 확인 
    if 문 사용 => 통해 해당 옵셔널이 nil 인지 확인하고,
    만약 아니라면 언래핑을 한다.
*/
if optional != nil {
  optional!
}


/*
3. Optional Binding // 옵셔널 바인딩
    if let 문 사용 => nil 이 아닌 경우, 새 상수에 옵션의 값을 할당한다.
    [형태]
    if let safeOptional = optional {
      safeOptional
    }
*/
let myOptional1: String? // String 타입과 String?(옵셔널String) 타입은 완전히 다른 데이터 유형을 가지고 있다.
myOptional1 = "Alban" // Optional("Alban")

let text: String = myOptional1 // Error (myOptional1은 옵셔널String 이기때문에)

// if let 을 사용한 옵셔널 바인딩
if let safeOptional = myOptional1 {
  let text: String = safeOptional
  let text2: String = safeOptional
  print(safeOptional)
} else { // safeOptional이 nil 이면 아래 코드 실행
  print("myOptional1 was found to be nil.")
}


/*
4. Nill Coalescing Operator // nil 병합 연산자
    [형태]
    optional ?? 기본값
*/
let myOptional2: String?
myOptional2 = nil
// 두개의 물음표를 사용 => 옵셔널 값이 nil일 경우 뒤의 기본값을 넣는다.
// 옵셔널 값이 nil이 아닐 경우는 해당 값을 넣는다.
let text3: String = myOptional2 ?? "I am the default value"
print(text3) // myOptional2가 nil 이므로 기본값 출력 ( I am the default value )

// 만약 옵셔널 값이 있을 경우(nil이 아닌 경우)
// myOptional2 = "값이 있어요"
// let text3: String = myOptional2 ?? "I am the default value"
// print(text3) // 값이 있어요


/*
5. Optional Chaining // 옵셔널 체이닝
    [형태]
    optional?.property
    optional?.method()
*/
struct MyOptionalStruct {
  var myProperty = 123
  func myMethod() {
    print("I am the MyOptionalStruct struct's method")
  }
}

let myOptional3 : MyOptionalStruct?
myOptional3 = MyOptionalStruct()

print(myOptional3.myProperty) // Error 

// 속성은 선택 사항이 아니지만 'struct가 옵셔널' 이기 때문에 해당 속성을 사용하려면 언래핑을 해야한다.
// 옵셔널 체이닝(?.)을 사용해서 안전하게 언래핑
// => 옵션이 nil이 아니면 이 사슬을 따라 해당 속성에 접근한다.
print(myOptional3?.myProperty) // Optional(123)
print(myOptional3?.myMethod()) // I am the MyOptionalStruct struct's method
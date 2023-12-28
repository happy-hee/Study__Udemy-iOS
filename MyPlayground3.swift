/*
***************************************************************************************
  [Functions with Outputs and Return Types (반환 값이 있는 함수)]
***************************************************************************************  
*/

// [형태]
func getMilk (money: Int) -> Int {
  let change = money - 2
  return change
}
var change = getMilk(money: 5) // 3

// 일반 함수
func greeting1() {
  print("Hello!")
}
greeting1() // Hello!

// 매개변수가 있는 함수
func greeting2(name: String) {
  print("Hello! \(name)")
}
greeting2(name: "Alban") // Hello! Alban

// 매개변수 & 반환값이 있는 함수
func greeting3(name: String) -> Bool {
  if name == "Alban" || name == "Sonny" {
    return true
  } else {
    return false
  }
}
let doorShouldOpen = greeting3(name: "Alban") // let doorShouldOpen = true
print(doorShouldOpen) // 


/*
[Coding Exercise] Functions Part 3
Using what you have learnt about functions which can have outputs, create a function called isOdd(n: Int).

isOdd(n: 5)
The function will test to see if the number is odd. 
// 숫자가 홀수인지 테스트하는 함수 생성
If it is, then it should output true otherwise it should output false. These are Booleans and not Strings.
// 만약 그렇다면 true, 아니라면 false를 반환(이것들은 문자열이 아닌 Bool 이다.)

Without changing any of the existing code, your function should be able to output the result.

Try out some code in this Repl.it: https://repl.it/@appbrewery/functions-3-exercise#main.swift
*/

func isOdd(n: Int) -> Bool {
  if n % 2 == 1 { // 나머지가 1이면 홀수
    return true
  } else {
    return false
  }
}

let result = isOdd(n: 3)
print(result)


/*
***************************************************************************************
  [Classes]
***************************************************************************************  
*/
/*
  Enemy.swift
  main.swift
  Dragon.swift
  파일 참고
*/
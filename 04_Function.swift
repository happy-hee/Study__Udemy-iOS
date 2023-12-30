/*
***************************************************************************************
  [Function - Functions and Scope]
***************************************************************************************  
*/

// Declare a function
func greeting1() {
  print("Hello!") 

  // This variable can only be used whithin this(greeting1 func) scope
  var myName = "happy"
}

func greeting2() {
  print("Hi!") 
}

// Run a function
greeting1()
greeting2()


/*
[Coding Exercise] Functions Part 1
Step 1. Head over to https://repl.it/@appbrewery/functions-1-exercise#main.swift and run the code, 
you should see something like the maps below printed:

Step 2. Use a combination of these four functions
// 이 4개의 함수를 조합해서 사용하세요.

up()
down()
left()
right()

to navigate the 🦊to the 🌽.
🦊를 🌽가 있는 곳으로 이동합니다.

Each time you call one of the above functions, it will move the fox one step in the chosen direction.
위의 함수 중 하나를 실행 할 때마다, 그것은 여우를 선택한 방향으로 한칸씩 움직입니다.

* 이 문제를 실행했을 경우를 확인은 https://repl.it/@appbrewery/functions-1-exercise#main.swift  에서 작업
*/ 

down()
down()
down()
down()
down()

right()
right()
right()
right()



/*
***************************************************************************************
  [Function - Functions with Inputs and Type Inference ]
***************************************************************************************  
*/
var myAge: String = "This data type is String"

// How to declare a function
// func FuncName (parameter: DataType){ }
// func 함수이름 (매개변수이름: 데이터 타입) {}
func greeting3 (whoToGreet: String) {
  print("Hello, \(whoToGreet)!") // Hello, happy!
}

// 인수: 함수를 호출하거나 트리거 할 때 전달되는 값 (여기서는 "happy")
greeting3(whoToGreet: "happy")



/*
[Coding Exercise] Functions Part 2
In this coding exercise, you're going to create a simple calculator. 
// 이 연습에서는 간단한 계산기를 만들 것입니다.
You will need to create 4 functions so that when you run the code, a and b are added/subtracted/multiplied and divided by each other.
// 코드를 실행하면 a와 b가 서로 더하기/빼기/곱하기/나누기가 되도록 4개의 함수를 만들어야 합니다.

To test your code, you can add some inputs using the button in the top right corner of the console, 
shown in the example below:

It will ask you for some input values. 
The values need to be numbers and they will be substituted into your code as the variables a and b. 
// 몇가지 입력값을 묻는 메시지가 표시됩니다. 값은 숫자여야 하며 그것들은 변수 a와 b로 대체되었습니다.
The numbers will need to be on separate lines.
// 숫자들은 별도의 층에 표시되어야 합니다.

e.g. If
a = 3 and b = 4
This is what you would expect to be printed from the calculator:
계산기에서 출력되는 예상되는 내용은 다음과 같습니다.

7
-1
12
0.75
Because:

3 + 4 = 7,
3 - 4 = -1,
3 x 4 = 12,
3 ÷ 4 = 0.75

You can try out your code here: https://repl.it/@appbrewery/functions-2-exercise#main.swift

NOTE: For the solution to pass the tests, you cannot alter any of the existing code below. 
a and b will come from the testing code. You should not modify them here. 
All you need to do is write the 4 functions. Also, there cannot be anything else 
printed in the console other than the 4 solutions as per the example above.

Did you get 0 for the last value? Hint: you'll need to remind yourself about 
Swift data types and maybe this link to Google will help.
*/

//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.
func add(n1: Int, n2: Int) {
  print(n1 + n2)
}
func subtract(n1: Int, n2: Int) {
  print(n1 - n2)
}
func multiply(n1: Int, n2: Int) {
  print(n1 * n2)
}

// func divide is must use Double or Float
func divide(n1: Int, n2: Int) {
  let a = Double(n1) // 3.0
  let b = Double(n2) // 4.0
  print(a / b) // 0.75

  // if Double is not used, result will be zero
  // print(a / b) // 0
}

//Don't move or change this code:
calculator(n1: 3, n2: 4)
// 7
// -1
// 12
// 0.75


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
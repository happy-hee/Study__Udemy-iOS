/*
***************************************************************************************
  [Comment(Print)]
***************************************************************************************
*/

// This is a comment
/*
  This is a comment
*/

// \(이 안에는 코드가 작성된다) -> 이런걸 문자열 보건 이라고 함
print("The result of 5 + 3 = \(5+3)")


/*
***************************************************************************************
  [Variables]
***************************************************************************************
*/
var a = 5
var b = 8

// [코딩 연습] 변수
// 기존 코드를 전혀 건드리지 않고 세 줄 의 코드를 작성하여 두 변수 a와 b에 포함된 값을 전환할 수 있습니까?

// 중요: 코드에는 숫자를 사용할 수 없습니다
// 코드를 올바르게 작성했다면 다음과 같이 인쇄되어야 합니다.
// a : 8 
// b : 5 

 var c = a // 5
a = b // 8
b = c // 5

print("The value of a is \(a)") // 8
print("The value of a is \(b)") // 5


/*
***************************************************************************************
  [Arrays]
***************************************************************************************
*/

/*
[Code Exercise] Arrays
Given the array of numbers in exercise.swift. Create another array called computedNumbers. computedNumbers should multiply each element in the numbers array by the next element. The last element should be multiplied by the first.

e.g. If numbers was equal to: [3, 1, 4, 2]
computedNumbers should equal [3 x 1, 1 x 4, 4 x 2, 2 x 3] which is: [3, 4, 8, 6]
Replace the comments with your code.

// HINT: In Swift, multiplication is done with the asterisk symbol. e.g. 3 x 4 would be: 3 * 4

// IMPORTANT:
// 1. You are not allowed to type the numbers 45, 73, 195 or 53 in your solution code.
// 2. computedNumbers should be created as a variable named exactly as you see in the print statement. Do not change the rest of the code.
*/

var numbers = [45, 78, 198, 63]
var computedNumbers = [numbers[0] * numbers[1], numbers[1] * numbers[2], numbers[2] * numbers[3], numbers[3] * numbers[0] ] // [3285, 14235, 10335, 2385]

print(computedNumbers)


/*
***************************************************************************************
  [Random]
***************************************************************************************  
*/

/*
  Int.random(in: lower...upper)
*/
// Random numbers, including numbers in parentheses
Int.random(in: 0...5) // One of 0, 1, 2, 3, 4, 5 is output randomly.

// Random numbers, including numbers in parentheses 
Int.random(in: 0..<5) // One of 0, 1, 2, 3, 4  is output randomly.

/*
  Bool.random()
*/
// true or false appears randomly
Bool.random()

/*
[Code Exercise] Randomisation
You are going to create a password generator. 
// 비밀번호 생성기를 만들 것입니다.

We have created an array called alphabet which contains all 26 letters in the alphabet.
// 알파벳 26자를 모두 포함한 alpahbet 이라는 이름의 배열을 만들었습니다.

Write some code to randomly pick 6 letters out of the alphabet to create a random 6 character password.
//6자의 랜덤한 비밀번호를 만들기 위해  알파벳에서 6글자를 랜덤하게 뽑는 어떠한 코드를 작성하세요.

HINT: You can add characters together with the "+" symbol. e.g.
//힌트: 당신은 "+" 심볼을 사용해서 문자들을 추가 할 수 있습니다. 예시 )

var a = "Angela"
var b = "Yu"
var c = a + b
print(c) //The output would be: "AngelaYu"
NOTE: The variable password should be a String of characters like "vacbae" or "abcefg", 
it should not be an array.
*/

func exercise() {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    // 알파벳의 글자 수는 26개 입니다.
    // var randomAlpahbetIndex = Int.random(in: 0...23)
    
    var password = 
    alphabet[Int.random(in: 0...25)] + 
    alphabet[Int.random(in: 0...25)] + 
    alphabet[Int.random(in: 0...25)] + 
    alphabet[Int.random(in: 0...25)] + 
    alphabet[Int.random(in: 0...25)] + 
    alphabet[Int.random(in: 0...25)]
    
    print(password)
}



/*
***************************************************************************************
  [Constants]
***************************************************************************************  
*/
/*
[Code Exercise] Constants
Variables store data that can vary.
변수는 다양한 데이터를 저장할 수 있습니다.

Another type of container in Swift is the Constant. 
Swift의 또다른 타입의 컨테이너는 상수입니다.
When you declare a constant, the data you add to it cannot change.
상수를 선언하고 그 안에 넣은 데이터는 바꿀 수 없습니다.

Constants are declared using a let instead of a var.
상수는 var 대신 let을 사용해 선언합니다. 
Try it out in this code exercise.

Declare a constant called secondsInAnHour that represents the number of seconds in an hour and 
1시간의 초를 나타내는 secondsInAnHour라고 불리는 상수를 선언하고,
assign that number to it on the same line. 
같은 라인에 해당 숫자를 할당하세요.

The data type of the constant should be an Integer.
상수의 데이터 타입은 무조건 정수여야 합니다.
*/

func exercise() {
    //Write your code here.
    let secondsInAnHour = 60 * 60
    
    
    //Don't change the code below.
    print(secondsInAnHour)

}


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
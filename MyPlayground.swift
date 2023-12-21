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
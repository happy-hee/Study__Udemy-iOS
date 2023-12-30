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
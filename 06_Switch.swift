/*
***************************************************************************************
  [Switch]
***************************************************************************************  
*/
func loveCalculatorToSwitch() {
  // 2. Create a random number generator
  let loveScore = Int.random(in: 0...100)
  print(loveScore)

  switch loveScore {
    // loveScore가 80보다 클 때
    case 81...100 :
      print("You love each other like Kanye loves Kanye")
      // loveScore가 40에서 80 사이에 있을 때
    case 41..<81 :
      print("You go together like Coke and Mentos")
    // loveScore가 40보다 작을 때
    case ...40 :
      print("You will be forever alone")
    default:
      print("Error")
  }
}

loveCalculatorToSwitch()

/*
[Coding Exercise] Switch
Create a program that takes a number (Int) as an input and prints the corresponding day of the week using a Switch statement.
// 숫자를 받으면 해당 요일을 출력하는 switch문을 만들어보세요.

e.g. If the input was 5
Then the function should print:
"Friday"

If the input number does not match a day of the week then your program should print "Error".
// 만약 입력 숫자가 요일과 일치하지 않으면 프로그램은 "Error"를 출력합니다.

You can try out your code here: https://repl.it/@appbrewery/switch-exercise#main.swift
Hint: The weekday printed needs to have the first letter capitalised and spelt correctly for the tests to pass.
*/

////Don't change this
var aNumber =  Int(readLine()!)! 

func dayOfTheWeek(day: Int) {
  
  //Write your code inside this function.
  switch day {
    case 1:
      print("Monday")
    case 2:
      print("Tuesday")
    case 3:
      print("Wednesday")
    case 4:
      print("Thursday")
    case 5:
      print("Friday")
    case 6:
      print("Saturday")
    case 7:
      print("Sunday")
    default: 
      print("Error")
  }
}
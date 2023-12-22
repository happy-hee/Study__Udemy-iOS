
/*
***************************************************************************************
  [IF/ELSE]
***************************************************************************************  
*/
// 1. Create a func loveCalculator
func loveCalculator() {
  // 2. Create a random number generator
  let loveScore = Int.random(in: 0...100)
  print(loveScore)

// loveScore가 80보다 클 때
 if loveScore > 80 {
    print("You love each other like Kanye loves Kanye")
  // loveScore가 40에서 80 사이에 있을 때
  } else if loveScore > 40 {
    print("You go together like Coke and Mentos")
  // loveScore가 40보다 작을 때
  } else  {
    print("You will be forever alone")
  }
}


loveCalculator()

/*
[Coding Exercise] IF/ELSE
Every 4 years, there is a leap year(윤년). 
Leap years have an extra day in February to bring the total number of days up to 366 instead of 365.

The 3 conditions for any given year to be a leap year are:
  // 윤년이 되기 위한 3가지 조건은 다음과 같다.
The year is exactly divisible by four (with no reminder) then it is a leap year,
  // 연도는 정확히 4로 나뉘어져야한다.
unless: If the year is also divisible by 100 (years ending in two zeros), then it is not a leap year, 
  // 예외: 연도를 100으로 나눌 수 있는 경우(연도가 2나 0으로 끝나는 경우), 그것은 윤달이 아니다.
except if It is also divisible by 400 (in this case it will be a leap year).
  // 단, 400으로 나눌 수 있는 경우는 윤달이다.

Complete the isLeap() function to print "YES" if the input is a leap year and "NO" if the input year was not.
// isLeap 함수는 입력값이 윤달이면 "YES"를 출력하고, 입력값이 윤달이 아니면 "NO"를 출력한다.
*/

//Don't change this
var aYear =  Int(readLine()!)! 

func isLeap(year: Int) {
  //Write your code inside this function.
  // 1. 연도는 정확히 4로 나뉘어져야한다. 
  if year % 4 == 0 {
    // 3. 단, 400으로 나눌 수 있는 경우는 윤달이다.
    if year % 400 == 0 {
      print("YES")
    // 2. 예외: 연도를 100으로 나눌 수 있는 경우(연도가 2나 0으로 끝나는 경우), 그것은 윤달이 아니다.      
    } else if year % 100 == 0 {
      print("NO")
    } else {
      print("YES")
    }
  } else {
      print("NO")
  }
}


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

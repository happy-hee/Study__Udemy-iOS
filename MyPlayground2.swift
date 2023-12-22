
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




/*
***************************************************************************************
  [Dictionaries]
***************************************************************************************  
*/
/*
[Coding Exercise] Dictionaries
Adding a New Entry

Slack Technologies Inc, the company behind Slack, the popular messaging and collaboration tool recently IPO'd in April 2019. 
// 인기 메시징 및 협업 도구인 Slack을 개발한 회사인 Slack Technologies Inc는 최근 2019년 4월에 IPO되었습니다.
It listed on the New York Stock exchange with the ticker WORK.

Add an entry to the stockTickers dictionary with the key "WORK" and the value "Slack Technologies Inc".
// "WORK" 키와 "Slack Technologies Inc" 값을 사용하여 stockTickers 사전에 항목을 추가합니다.

Update an Existing Value

Dynamic Materials Corp is a company that specializes in explosion metalworking like cladding or shock hardening. 
However, the official company name is not “Dynamic Materials” it is "DMC Global Inc". 
Update the value for the ticker symbol BOOM to "DMC Global Inc".
*/

func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
      "APPL" : "Apple Inc", 
    	"HOG": "Harley-Davidson Inc", 
    	"BOOM": "Dynamic Materials", 
    	"HEINY": "Heineken", 
    	"BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.
    stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers["BOOM"] = "DMC Global Inc"
    
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}



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
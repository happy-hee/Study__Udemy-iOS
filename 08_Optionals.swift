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
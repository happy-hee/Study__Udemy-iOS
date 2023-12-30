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
